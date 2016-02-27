01010010
========

This repository contains configuration and management code for
[01010010](https://gitter.im/01010010),
our public errbot instance [on Gitter](https://gitter.im/errbotio/errbot).

*This document and the code contained within this repository is intended for core project contributors.
People curious about our deployment process are most welcome to check it out,
but it is of no interest otherwise.*


Jenkins
-------

A Jenkins instance is available at https://jenkins.errbot.net
to help manage *01010010*.

Jobs relevant to *01010010* are accessible only to
members of the [errbotio core team](https://github.com/orgs/errbotio/teams/core).

* The [Track 01010010 repository](https://jenkins.errbot.net/job/Track%2001010010%20repository/) job
  is triggered via GitHub webhook whenever a commit is made to the master branch.

  It will trigger seperate jobs to update the repository checkout in `/srv/errbot` and
  perform an upgrade of the bot code.

* The [Track errbot repository](https://jenkins.errbot.net/job/Track%errbot%20repository/) job
  is triggered via GitHub webhook whenever a commit is made to the
  [errbotio/errbot](https://github.com/errbotio/errbot) master branch.

  This will trigger an [update of submodules](https://jenkins.errbot.net/job/Update%2001010010%20submodules/)
  which will cascade down through the [update pipeline](https://jenkins.errbot.net/view/01010010%20update%20pipeline/).

Scripts
-------

* **update_repository.sh**:
      Update the repository (and its submodules) to the latest version on GitHub.

* **update_submodules.sh**:
      Update the submodules included in this repository.
      The result may be published to GitHub automatically by specifying `--publish` as an argument.

* **upgrade_bot.sh**:
      Upgrade (and restart) the bot after updating the code bundled with this repository.


_**Note**: All scripts expect to be run from the repository root._
