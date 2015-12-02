deps:
	@ ansible-galaxy install --ignore-errors -r roles/requirements.yml -p roles/vendor

betsy:
	@ ansible-playbook playbooks/betsy.yml --diff

.PHONY: \
	deps \
	betsy
