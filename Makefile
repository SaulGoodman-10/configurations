export_bashrc:
	cp .bashrc $(HOME)/.bashrc

import_bashrc:
	cp $(HOME)/.bashrc ./.bashrc

push_updates:
	git commit -a -m "bashrc updated"
	git push

# Help
help:
	@echo "Comandi disponibili:"
	@echo "  make export_bashrc  -> copy .bashrc file to home directory"
	@echo "  make import_bashrc  -> copy .bashrc file from home directory"
	@echo "  make push_updates   -> commit updated"
