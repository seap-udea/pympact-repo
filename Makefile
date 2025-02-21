clean:
	@echo "Cleaning crap"
	@-find . -name "*~" -exec rm {} \;
	@-find . -name "#*#" -exec rm -rf {} \;
	@-find . -name ".DS_Store" -exec rm -rf {} \;

commit:
	@echo "Commiting changes..."
	@-git add -A .
	@-git commit -am "New data"
	@git push

pull:
	@echo "Pulling data from repository..."
	@git reset --hard HEAD	
	@git pull
