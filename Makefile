CC = gcc
LIBS = -lpthread #-lsocket


all: httpd client

httpd: httpd.c
	$(CC) -g -W -Wall $(LIBS) -o $@ $<

client: simpleclient.c
	$(CC) -W -Wall -o $@ $<

clean:
	$(RM) httpd
