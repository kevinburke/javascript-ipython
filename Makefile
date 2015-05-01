venv:
	virtualenv venv

install: venv
	. venv/bin/activate; pip install --requirement requirements.txt
	. venv/bin/activate; npm install ijavascript

clean: 
	rm -rf venv
	rm -rf node_modules
	rm -rf .ipynb_checkpoints

serve:
	. venv/bin/activate; ./node_modules/.bin/ijs --notebook-dir=/Users/burke/code/api --ijs-working-dir=/Users/burke/code/api
