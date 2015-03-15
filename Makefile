all: sharkapp

sharkapp:
	g++ -Wall -c -std=c++11 -I/usr/local/include -o src/main.o src/main.cpp
	g++ src/main.o -L/usr/local/lib -lSDL2 -lSDL2_image -o shark

install:
	mkdir -p /usr/lib/sharkapp/assets
	cp -R shark assets/ /usr/lib/sharkapp

uninstall:
	rm -rf /usr/lib/sharkapp

clean:
	rm src/main.o shark
