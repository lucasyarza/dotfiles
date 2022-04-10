.PHONY: install

install: pre-dotbot dotbot prepare-nvim

pre-dotbot:
	chmod +x ./install

# Run dotbot install script
dotbot:
	./install

prepare-nvim:
	python3 -m venv editors/nvim/.venv
	( \
       source editors/nvim/.venv/bin/activate; \
       pip install -r editors/nvim/requirements.txt; \
    )
