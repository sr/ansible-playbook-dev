# ![Ansible](http://i.imgur.com/Iu7sFTG.png) NTP

| Ansible Galaxy | CI Status ('master') | CI Status ('develop') | Latest Release |
|:--------------:|:--------------------:|:---------------------:|:--------------:|
| [![role badge](https://img.shields.io/ansible/role/6749.svg)](https://galaxy.ansible.com/detail#/role/6749) | [![Build Status](https://travis-ci.org/agh/ansible-role-ntp.svg?branch=master)](https://travis-ci.org/agh/ansible-role-ntp) | [![Build Status](https://travis-ci.org/agh/ansible-role-ntp.svg?branch=release)](https://travis-ci.org/agh/ansible-role-ntp) | [![Release Tag](https://img.shields.io/github/tag/agh/ansible-role-ntp.svg)](https://github.com/agh/ansible-role-ntp/releases) |

A role for [Ansible](http://www.ansible.com/) ([source](https://github.com/ansible/ansible), [docs](https://docs.ansible.com)) which will install and configure [NTP](https://en.wikipedia.org/wiki/Network_Time_Protocol) on a system.

## Requirements

This role requires Ansible 1.9 (or newer) in order to function correctly.

A number of operating systems are considered "supported" and are outlined below.

## Default Behaviours

 * Will configure NTP daemon for time-keeping on the deployed system only.
 * Uses four servers from the 'pool.ntp.org' constellation as time source.
 * Does not employ authentication.
 * Uses 'tinker panic 0' to be more tolerant of virtual environments.

## Example Usage

##### Playbook

```
- hosts: all
    roles:
      - role: ntp
```

##### Execution

```
ansible-playbook -i hosts playbook.yml
```

## Supported Operating Systems

This role should be considered fully supported on the following operating systems:

  * Fedora (latest)
  * CentOS 6
  * CentOS 7
  * Ubuntu 12.04 ('Precise Pangolin')
  * Ubuntu 14.04 ('Trusty Tahr')

Each proposed change to the role is tested against each of these platforms. Periodic tests are run even without proposed changes to ensure that the role      continues to work against a 'moving target' (i.e. Fedora, latest version).

Other operating systems **may** work but aren't "supported". Your mileage may vary.

  * Debian 7 ('Wheezy')
  * Debian 8 ('Jessie')
  * FreeBSD 10
  * Oracle Linux 6
  * Oracle Linux 7
  * Red Hat Enterprise Linux 6 ('Maipo')
  * Red Hat Enterprise Linux 7 ('Santiago')
  * SmartOS (latest)
  * Solaris 11

Where possible tests are run against all platforms (including those without official support) so you can refer to CI for some inkling of "Is this functional?", and avoid wasting your time if not.

## Role Variables

 * ntp_config_file
 * ntp_package_state
 * ntp_service_state
 * ntp_service_enabled
 * ntp_driftfile
 * ntp_server
 * ntp_restrict
 * ntp_listen
 * ntp_statistics
 * ntp_filegen
 * ntp_crypto
 * ntp_includefile
 * ntp_keys
 * ntp_trustedkey
 * ntp_requestkey
 * ntp_controlkey
 * ntp_broadcast
 * ntp_broadcastclient
 * ntp_multicastclient
 * ntp_tinker_panic

## Dependencies

None.

## Workflow

Within this repository the 'master' branch represents the latest release. Releases are tagged from that. The default branch is configured as 'develop' and this code represents the "cutting edge", though it should be functional since most alterations occur via Pull Request which is itself tested for breakage prior to merge.

## Author Information

This role is written and maintained by Alex Howells [[E-mail](mailto:alex@howells.me)] [[Twitter](https://twitter.com/nixgeek)].

#### Acknowledgements

Inspired in large part by existing roles, credit due to @bennojoy and @resmo.

## License

Licensed under the terms stated in the LICENSE file, located in the repository root.
