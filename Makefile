CC=gcc
CFLAGS=-Wall -Wextra -pedantic
LDFLAGS=-lpigpiod_if2 -lpthread

.PHONE: all clean

all: demo

demo: pin_ctrl.c demo_pin_ctrl.c
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

clean:
	rm -f pin_ctrl
