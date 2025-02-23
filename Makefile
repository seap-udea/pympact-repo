clean:
	@echo "Cleaning crap"
	@-find . -name "*~" -exec rm {} \;
	@-find . -name "#*#" -exec rm -rf {} \;
	@-find . -name ".DS_Store" -exec rm -rf {} \;

pull:
	@echo "Pulling data from repository..."
	@git pull --rebase

commit:
	@echo "Commiting changes..."
	@-git add -A .
	@-git commit -am "New data"
	@git push
