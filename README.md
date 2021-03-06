# WMO WOUDC Guidebook

This package provides management and setup of the WOUDC Contributor Guide.

## Overview

The World Ozone and Ultraviolet Radiation Data Centre (WOUDC) is one of six
World Data Centres which are part of the
[Global Atmosphere Watch](http://www.wmo.int/gaw) programme of the World
Meteorological Organization.

The official WOUDC guidebook is available at [http://guide.woudc.org](http://guide.woudc.org).

## Installation

### Requirements

Ruby 2.0 or greater.

### Dependencies

This package uses [jekyll](https://jekyllrb.com) as a static site generator
and requires the following dependencies to be installed on the system:

- ruby2.0
- ruby2.0-dev

### Installing

```bash
virtualenv woudc-guidebook
cd woudc-guidebook
. bin/activate  # yes that is a period
git clone https://github.com/woudc/woudc-guidebook.git
cd woudc-guidebook
. setenv-ruby-gems.sh
gem2.0 install bundler
bundle install
make setup
```

## Workflow

```bash
# build local documentation
jekyll build  # output in _site/
# serve on your host's IP, port 4000
# docs are live rebuilt as you make changes
make serve  # http://localhost:4000/
# release a new version
vi _config.yml
# update version: value/key to x.y.z (as per http://producingoss.com/en/development-cycle.html#release-number-even-odd-strategy)
# update release_date: value/key to date of release (format YYYY-MM-DD)
git commit -m 'update release version' _config.yml
git push origin master
git tag -a x.y.z -m 'tagging WOUDC guidebook version x.y.z'
git push --tags
make publish
```

## Issues

Issues are managed at https://github.com/woudc/woudc-guidebook/issues
