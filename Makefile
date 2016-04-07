venv:
	virtualenv venv

install: venv
	. venv/bin/activate; pip install --requirement requirements.txt
	npm install

clean: 
	rm -rf venv
	rm -rf node_modules
	rm -rf .ipynb_checkpoints

serve:
	./scripts/serve
