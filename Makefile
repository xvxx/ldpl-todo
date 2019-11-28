default: build

install: build
	cp todo /usr/local/bin

build: todo

todo:
	ldpl todo.ldpl -f=-O2 -o=todo

clean:
	rm -f todo
