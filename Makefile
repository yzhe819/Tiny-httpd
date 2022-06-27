all: httpd

httpd: httpd.c
	# gcc -W -Wall -lsocket -lpthread -o httpd httpd.c
	gcc -g -W -Wall  httpd.c -o httpd -lpthread

clean:
	rm httpd
