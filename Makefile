INSTALL = sudo apt install -y

TOOLS = curl ffmpeg pass
PYTHON = python3 python3-venv python3-pip
CDEV_TOOLS = gcc gdb valgrind strace exuberant-ctags bear
DEV_TOOLS = git docker.io

all: update python tools dev-tools cdev-tools

update:
	sudo apt update && sudo apt upgrade -y

python:
	$(INSTALL) $(PYTHON)

cdev-tools:
	$(INSTALL) $(CDEV_TOOLS)

dev-tools:
	$(INSTALL) $(DEV_TOOLS)

tools:
	$(INSTALL) $(TOOLS)
