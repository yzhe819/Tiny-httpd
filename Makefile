all: httpd

httpd: clean
	@echo "compiling..."
	gcc -W -Wall httpd.c -o httpd -lpthread
	@echo "compiled"

clean:
	@echo "cleaning..."
	@if [ -e  httpd ]; then rm httpd; fi
	@echo "cleaned"

run:
	@echo "running..."
	./httpd
