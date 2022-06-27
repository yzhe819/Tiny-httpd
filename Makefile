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

install:
	@echo "perl-cgi installing..."
	@echo "install CGI.pm"
	perl -MCPAN -e shell

check:
	# perl -MCGI -e 'print "CGI.pm version $CGI::VERSION\n";'