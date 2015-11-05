ANSIBLE_INVENTORY = $(shell pwd)/inventory.ini
ANSIBLE_ROLES_PATH = $(shell pwd)/roles/internal:$(shell pwd)/roles/vendor
ANSIBLE_HOST_KEY_CHECKING = False

export \
	ANSIBLE_INVENTORY \
	ANSIBLE_ROLES_PATH \
	ANSIBLE_HOST_KEY_CHECKING

deps:
	@ ansible-galaxy install -r roles/requirements.yml -p roles/vendor

betsy:
	@ ansible-playbook playbooks/betsy.yml --diff

.PHONY: \
	deps \
	betsy
