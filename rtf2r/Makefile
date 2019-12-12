all: rtf2r

rtf2r: rtf2r.m
	$(CC) -m32 rtf2r.m -o rtf2r -framework Carbon -framework Cocoa

clean:
	- rm -f rtf2r
