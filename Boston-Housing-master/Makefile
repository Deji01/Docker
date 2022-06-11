setup:
	python3 -m venv ~/.boston-housing
	#source ~/.boston-housing/bin/activate
	
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

train:
	python train.py
	
test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb


lint:
	#hadolint Dockerfile #uncomment to explore linting Dockerfiles
	pylint --disable=R,C,W1203,W0702 app.py

all: install lint test