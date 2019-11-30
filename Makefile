default: build

install: build
	cp todo /usr/local/bin

build: todo

todo: todo.ldpl
	ldpl todo.ldpl -f=-O2 -o=todo

clean:
	rm -f todo
