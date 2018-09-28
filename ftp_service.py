from socket import *
import os,sys
import signal
from time import sleep

#确定文件夹路径,
FILE_PATH = "/home/zengsf/ftpfile/"


IP = ""
PORT = 8888
ADDR = (IP, PORT)

class MyServer(object):
	def __init__(self, c):
		self.c = c	

	def do_list(self):
		#通过os.listdir来获取目录列表
		file_list = os.listdir(FILE_PATH)
		if not file_list:
			self.c.send("文件库没有数据".encode())
			#如果发现文件不存在，就停止执行，否则报错
			return
		else:
			self.c.send(b"OK")
			sleep(0.1)
		files = ""
		#循环遍历列表
		for i in file_list:
			#把隐藏文件和文件夹排除，只留下普通文件
			if i[0] != "." and os.path.isfile(FILE_PATH + i):
				#为了防止粘包，利用*号分割
				files = files + i + "*"
		#一次性发送所有内容，成功返回None，否则报异常
		self.c.sendall(files.encode())
		print("发送成功")
		
	#读取相对路径下指定的文件数据，并发送给客户端
	def do_get(self, filename):
		try:
			fd = open((FILE_PATH + filename), "rb")
		except:
			self.c.send("文件不存在".encode())
			#如果发现文件不存在，就停止执行，否则报错
			return
		self.c.send(b"OK")
		sleep(0.1)
		while True:
			data = fd.read(1024)
			if len(data) < 1024:
				self.c.send(data)
				break
			self.c.send(data)
		fd.close()	
		print("发送成功")
		
	def do_put(self, filepath):
		filepath_list = filepath.split("/")
		#由于客户端只能看到服务器的普通文件，因此服务器上传也只能上传普通文件
		if os.path.isfile(filepath) and filepath_list[-1][0] != ".":
			self.c.send(b"OK")
			#写到指定的文件夹中
			f = open((FILE_PATH + filepath_list[-1]), "wb")
			while True:
				fd = self.c.recv(1024)
				if len(fd) < 1024:
					f.write(fd)
					break
				f.write(fd)
			f.close()
			print("上传成功")
		else:
			self.c.send("文件路径错误或者传的文件非普通文件".encode())
			
		
			

def main():
	#子进程状态改变忽略告知父进程，因此让系统进程来处理子进程，避免成为僵尸进程
	signal.signal(signal.SIGCHLD, signal.SIG_IGN)
	
	#创建套接字
	s = socket()
	s.setsockopt(SOL_SOCKET, SO_REUSEADDR, 1)
	s.bind(ADDR)
	s.listen(5)
	
	while True:
		try:
			#可能有多个客户端连接，因此循环连接
			c, addr = s.accept()
			print("以连接到客户端:", addr)	
		except KeyboardInterrupt:
			sys.exit("自己退出服务器")
		


		#创建父子进程
		pid = os.fork()
		#将子进程来处理接收消息
		if pid == 0:
			s.close()
			ftp = MyServer(c)

			#下面就是接收到客户端发过来的数据进行判断了
			while True:
				data = c.recv(1024).decode()
				#当客户端按下ctrl+c键时，客户端就会发空数据过来
				if data == "" or data[0] == "Q":
					c.close()
					sys.exit("客户端退出")
				elif data.strip(" ")[0] == "L":
					ftp.do_list()
				elif data.split(" ")[0] == "G":
					filename = data.split(" ")[-1]
					ftp.do_get(filename)
				elif data.split(" ")[0] == "P":
					filepath = data.split(" ")[-1]
					ftp.do_put(filepath)
					
					
		#父进程负责循环连接客户端
		else:
			c.close()
			continue
	

if __name__ == "__main__":
	main()
