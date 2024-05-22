.PHONY: run clean 

PYTHON := python3
PYTHONPATH := `pwd`

FILENAME=main
PAPER_DIR=paper
AUX_DIR=.aux

VENV = .venv
PYTHON = $(VENV)/bin/python3
PIP = $(VENV)/bin/pip

all: run paper

run: $(VENV)/bin/activate
	$(PYTHON) src/train.py

$(VENV)/bin/activate: requirements.txt
	$(PYTHON) -m venv $(VENV)
	$(PIP) install -r requirements.txt

clean:
	rm -rf __pycache__
	rm -rf $(VENV)
	rm ${PAPER_DIR}/${AUX_DIR}
