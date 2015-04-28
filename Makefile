venv:
	virtualenv venv

install: venv
	pip install --requirement requirements.txt
	npm install ijavascript

clean: 
	rm -rf venv
	rm -rf node_modules
	rm -rf .ipynb_checkpoints

serve:
	./node_modules/.bin/ijs --notebook-dir=/Users/burke/code/api --ijs-working-dir=/Users/burke/code/api
