# Arcane incantation to print all the other targets, from https://stackoverflow.com/a/26339924
help:
	@$(MAKE) -pRrq -f $(lastword $(MAKEFILE_LIST)) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'

# Install required dependencies 
conda-update:
	conda env update --prune -f environment.yml
	echo "RUN RIGHT NOW:\nconda activate fsdl-text-recognizer"

# Compile and install exact pip packages
pip-tools:
	pip install pip-tools
	pip-compile requirements/prod.in && pip-compile requirements/dev.in
	pip-sync requirements/prod.txt requirements/dev.txt