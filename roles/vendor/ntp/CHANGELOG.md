# Change Log

Entries to this document are ordered chronologically with the newest release at the top. Dates represent the time when the release was tagged, formatted YYYY-MM-DD.

Versioning of releases should conform to Sematic Versioning 2.0 ([spec](http://semver.org/)).

#### v1.1.0 (2016-01-04)

  * Tidied up README.md to better reflect differing levels of platform support.
  * Updated the Ansible Galaxy metadata to include all the platforms this **will** and *should* work on.
  * Introduced this document (CHANGELOG.md) as a means of keeping track of 'What changed?'.
  * Started doing development against 'develop' and only merging to 'master' as part of cutting a release.
  * Alters default behaviour to employ 'tinker panic 0' for greater tolerance of virtual environments where the hypervisor may cause >1000ms jumps in the clock.
  * Updated the CI configuration to not fail the build for unsupported platforms or tests.

#### v1.0 (2016-01-01)

  * Initial release of the role.
  * Support and testing for configuring NTP on CentOS, Fedora and Ubuntu.
