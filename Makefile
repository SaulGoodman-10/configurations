copy_bashrc:
	@cp $HOME/.bashrc ./

push_updates:
	@git commit -m "bashrc updated"

all: copy_bashrc push_updates
# Help
help:
	@echo "Comandi disponibili:"
	@echo "  make copy_bashrc  -> copy .bashrc file fron home ditectory"
	@echo "  make push_updates -> commit updated"
	@echo "  make all          -> run all"
