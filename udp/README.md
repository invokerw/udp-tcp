
udp server client 一个程序通过 config 设置


每一个源客户端的连接在 udpclient 与 udpserver 内部都会产生一个新的连接

可以通过 is_encrypt 参数对发送的协议加密
通过 extra_send 参数将包多次发送降低丢包率
在两端会将重复的包去掉


client   <-->   			<-->   			  <-->	  server
client   <-->   			<-->   			  <-->	  server
client   <-->   udp client  <-->  udp server  <-->    server
client   <-->   			<-->  			  <-->    server
client   <-->   			<-->  			  <-->    server


