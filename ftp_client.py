from socket import *
import os,sys

class MyClient(object):
	def __init__(self, s):
		self.s = s

	#获取服务器文件列表
	def do_list(self):
		self.s.send("L ".encode())
		data = self.s.recv(1024).decode()
		if data == "OK":
			fd = self.s.recv(4096).decode()
			fd_list = fd.split("*")
			for i in fd_list:
				print(i)
		else:
			print(data)

	#copy服务器文件
	def do_get(self, filename):
		#发送"G filename"格式给服务器
		self.s.send(("G " + filename).encode())
		#等待服务器给客户端时候答复
		data = self.s.recv(1024).decode()
		#如果可以，执行if，否则else
		if data == "OK":
			f = open(("./"+filename), "wb")
			#利用循环进行读取数据，并且将数据写入到打开的文件中
			while True:
				fd  = self.s.recv(1024)
				#如果读取到的数据长度没有1024,这说明已经到了文件的末尾了
				if len(fd) < 1024:
					f.write(fd)
					break
				f.write(fd)
			f.close()
			print("缓存成功")
		else:
			print(data)

	def do_put(self, filepath):
		#将路径字符串转化为列表,以/分割
		filepath_list = filepath.split("/")
#		#获取文件名
#		filename = filepath_list[-1]
		#把格式发给服务器
		self.s.send(("P " + filepath).encode())
		#等待服务器答复
		data = self.s.recv(1024).decode()
		if data == "OK":
			#下面就是文件的读取和发送了
			try:
				f = open(filepath, "rb")
			except:
				print("文件打开失败")
			while True:
				data = f.read(1024)	
				if len(data) < 1024:
					self.s.send(data)
					break
				self.s.send(data)
			f.close()
			print("上传成功")
		else:
			#文件路径错误或者文件不是普通文件
			print(data)
		
	def do_quit(self):
		self.s.send("Q ".encode())
		#退出程序
		sys.exit("安全退出")
		
		

def main():
	#从终端输入IP和PORT
	if len(sys.argv) < 3:
		print("argv error")	
	IP = sys.argv[1]
	PORT = int(sys.argv[2])
	ADDR = (IP, PORT)
	
	#创建套接字
	s = socket()
	s.setsockopt(SOL_SOCKET, SO_REUSEADDR, 1)
	try:
		s.connect(ADDR)
	except:
		print("连接服务器失败")
		return

	#创建一个类对象
	ftp = MyClient(s)
	
	try:
		while True:
			print("****************")
			print("******list******")
			print("****get file****")
			print("****put file****")
			print("******quit******")
			print("****************")
		
			data = input("请输入以上格式>>")
			
			#选择相对应的动作
			if data.strip(" ") == "list":
				ftp.do_list()
			elif data.split(" ")[0] == "get":
				filename = data.split(" ")[-1]
				ftp.do_get(filename)
			elif data.split(" ")[0] == "put":
				#filepath是文件路径,绝对路径和相对路径都可以
				filepath = data.split(" ")[-1]
				ftp.do_put(filepath)
			elif data.strip(" ") == "quit":
				ftp.do_quit()
	except KeyboardInterrupt:
		sys.exit("自动退出客户端")	



if __name__ == "__main__":
	main()
