CC	= arm-linux-gnueabihf-gcc
CFLAGS	= -O1 -Wall -ggdb -mcpu=cortex-a7
LDFLAGS =  -fno-stack-protector

objects	= fibseq.o fib.o

default: fibseq

.PHONY: default clean qemu

fibseq: $(objects)
	$(CC) $(LDFLAGS)  -o $@ $^

fib.o: fib.s
fibseq.o: fibseq.c

%.o: %.c
	$(CC) -c -g $(CFLAGS) -Wall -o $@ $<

%.o: %.s
	$(CC) -c -g $(CFLAGS) -Wall -o $@ $<

clean:
	rm -f $(objects) fibseq

QEMU_CMD =qemu-arm   -L /usr/arm-linux-gnueabihf ./fibseq &
CMD = yes 9 | $(call QEMU_CMD) && sleep 1
qemu: fibseq
	@yes 20| $(call QEMU_CMD) 
	@sleep 1

