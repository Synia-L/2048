CFLAGS := -std=c99

objects := $(patsubst %.c, %.o, $(wildcard *.c))

all: 2048

2048: $(objects)
	gcc -o 2048 $^ -lncurses

$(objects): %.o: %.c
	gcc -c $(CFLAGS) $< -o $@ -lncurses

.PHONY: clean

clean:
	-rm -rf *.o \
	rm -rf 2048

.PHONY: install

install: 2048
	@if [ ! -d ~/bin ]; then \
	  mkdir ~/bin ;\
	else \
	  cp 2048 ~/bin/ ;\
	  echo "Installed in ~/bin successfully !" ;\
	fi

.PHONY: uninsall

uninstall:
	-rm -rf  ~/bin/2048
