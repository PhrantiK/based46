.PHONY: all clean fetch

all:
	@printf "\e[35mCompiling...\e[0m\n"
	python3 compile.py
	@printf "\e[34mDone!\e[0m\n"

clean:
	rm -rf colors templates

install:
	cp colors/* ~/.config/nvim/colors/

fetch:
	@if [ -d "src/.git" ]; then \
		printf "\e[35mBase46 already exists, pulling changes.\e[0m\n"; \
		cd src && git pull > /dev/null 2>&1; \
		printf "\e[34mDone!\e[0m\n"; \
	else \
		printf "\e[35mCloning Base46 repo.\e[0m\n"; \
		git clone https://github.com/NvChad/base46.git src > /dev/null 2>&1; \
		printf "\e[34mDone!\e[0m\n"; \
	fi
