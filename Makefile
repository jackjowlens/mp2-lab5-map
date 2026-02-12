CC = g++
CFLAGS = -Wall -Wextra -Werror -std=c++23 -fsanitize=address

Include = -I./include
src = src
samples = samples

all:
	clang-format -i $(src)/*.cpp include/* $(samples)/*.cpp
	$(CC) $(CFLAGS) $(src)/map.cpp $(samples)/main_map.cpp $(Include)