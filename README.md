01010010
========

This repository contains configuration and management code for
[01010010](https://gitter.im/01010010),
our public errbot instance [on Gitter](https://gitter.im/errbotio/errbot).


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
