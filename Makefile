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
	./scripts/serve
