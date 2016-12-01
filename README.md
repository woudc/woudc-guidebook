# WMO WOUDC Guidebook

This package provides management and setup of the WOUDC Contributor Guide.

## Overview

The World Ozone and Ultraviolet Radiation Data Centre (WOUDC) is one of six
World Data Centres which are part of the
[Global Atmosphere Watch](http://www.wmo.int/gaw) programme of the World
Meteorological Organization.

The official WOUDC guidebook is available at [http://docs.woudc.org/contributor-guide](http://docs.woudc.org/contributor-guide).

## Installation

### Requirements

Python 2.7 or greater.

## Dependencies

This package uses [mkdocs](http://mkdocs.org) as a static site generator.


### Installing

```bash
virtualenv woudc-guidebook
cd woudc-guidebook
. bin/activate  # yes that is a period
git clone https://github.com/woudc/woudc-guidebook.git
cd woudc-guidebook
pip install -r requirements.txt
```

### Workflow

```bash
# build local documentation
mkdocs build  # output in site/
# serve on your host's IP, port 8000
# docs are live rebuilt as you make changes
mkdocs serve -a 0.0.0.0:8000  
# pages available at /index-en and /index-fr
```

## Issues

Issues are managed at https://github.com/woudc/woudc-guidebook/issues
