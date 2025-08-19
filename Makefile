ANSIBLE_PLAYBOOK = ansible-playbook

include .env

inventory ?= web

.PHONY: all
all:
	$(ANSIBLE_PLAYBOOK) -i ansible/inventory.ini ansible/playbook.yml \
		--limit ${inventory} \
		--ask-become-pass

