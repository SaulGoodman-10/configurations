use_bashrc:
	cp .bashrc $(HOME)/.bashrc

copy_bashrc:
	@cp $(HOME)/.bashrc ./.bashrc

push_updates:
	@git commit -m "bashrc updated"

all: copy_bashrc push_updates
# Help
help:
	@echo "Comandi disponibili:"
	@echo "  make use_bashrc   -> copy .bashrc file to home ditectory"
	@echo "  make copy_bashrc  -> copy .bashrc file from home ditectory"
	@echo "  make push_updates -> commit updated"
	@echo "  make all          -> run all"
