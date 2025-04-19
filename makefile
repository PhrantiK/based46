.PHONY: all clean fetch install

LUA ?= luajit        # or luajit

all:
	@printf "\e[35mCompiling...\e[0m\n"
	$(LUA) compile.lua
	@printf "\e[34mDone!\e[0m\n"

clean:
	rm -rf colors templates

install:
	cp colors/* ~/.config/nvim/colors/

fetch:
	@if [ -d "src/base46/.git" ]; then \
		printf "\e[35mBase46 already exists, pulling changes.\e[0m\n"; \
		cd src/base46 && git pull --quiet; \
		printf "\e[34mDone!\e[0m\n"; \
	else \
		printf "\e[35mCloning Base46 repo.\e[0m\n"; \
		git clone --quiet https://github.com/NvChad/base46.git src/base46; \
		printf "\e[34mDone!\e[0m\n"; \
	fi
