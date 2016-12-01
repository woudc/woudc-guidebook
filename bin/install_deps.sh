#!/bin/bash
# =================================================================
#
# Terms and Conditions of Use
#
# Unless otherwise noted, computer program source code of this
# distribution is covered under Crown Copyright, Government of
# Canada, and is distributed under the MIT License.
#
# The Canada wordmark and related graphics associated with this
# distribution are protected under trademark law and copyright law.
# No permission is granted to use them outside the parameters of
# the Government of Canada's corporate identity program. For
# more information, see
# http://www.tbs-sct.gc.ca/fip-pcim/index-eng.asp
#
# Copyright title to all 3rd party software distributed with this
# software is held by the respective copyright holders as noted in
# those files. Users are asked to read the 3rd Party Licenses
# referenced with those assets.
#
# Copyright (c) 2015 Government of Canada
#
# Permission is hereby granted, free of charge, to any person
# obtaining a copy of this software and associated documentation
# files (the "Software"), to deal in the Software without
# restriction, including without limitation the rights to use,
# copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following
# conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
# OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
# WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
# OTHER DEALINGS IN THE SOFTWARE.
#
# =================================================================

DEPS=(
  "wet-boew-theme-gcwu-fegc::https://github.com/wet-boew/theme-gcwu-fegc/releases/download/v4.0.9/themes-dist-4.0.9-theme-gcwu-fegc.zip"
  "font-awesome::https://github.com/FortAwesome/Font-Awesome/archive/v4.5.0.zip"
)

if [ $# -ne 1 ]; then
cat <<END
Usage: `basename $0` <base-dir>
END
  exit 1
fi

BASEDIR=$1
STAGE=$BASEDIR/stage

echo "Preparing dependencies installation"
mkdir -p $STAGE

echo "Downloading JavaScript dependencies"

for lib in "${DEPS[@]}"
do
  KEY="${lib%%::*}"
  VALUE="${lib##*::}"
  LOCALFILE=$STAGE/`basename $VALUE`
  if [ -f $LOCALFILE ]
  then
    echo "$LOCALFILE exists.  Skipping"
  else
    echo "Downloading $KEY from $VALUE"
    (cd $STAGE; curl -LOk $VALUE)
  fi
  echo "Installing $KEY"

  if [[ $KEY = 'font-awesome' ]]
  then
    unzip $LOCALFILE -d $STAGE/$KEY
    mkdir -p $BASEDIR/woudc_theme/static/libs/css/font-awesome/css
    find $STAGE/$KEY -maxdepth 3 -type f -name "font-awesome.min.css" -exec mv {} $BASEDIR/woudc_theme/static/libs/css/font-awesome/css \;
    find $STAGE/$KEY -maxdepth 2 -type d -name fonts -exec mv {} $BASEDIR/woudc_theme/static/libs/css/font-awesome \;
  else
    unzip $LOCALFILE -d $BASEDIR/woudc_theme/static/libs/js/$KEY
    if [[ -n "$(find $BASEDIR/woudc_theme/static/libs/js/$KEY/ -type d | head -n 1)" ]]
    then
      for libdir in `ls "$BASEDIR/woudc_theme/static/libs/js/$KEY"`
      do
        if [ -d "$BASEDIR/woudc_theme/static/libs/js/$KEY/$libdir" ]
        then
          for myfile in `ls $BASEDIR/woudc_theme/static/libs/js/$KEY/$libdir/`
          do
            mv "$BASEDIR/woudc_theme/static/libs/js/$KEY/$libdir/$myfile" "$BASEDIR/woudc_theme/static/libs/js/$KEY"
          done
          rm -fr $BASEDIR/woudc_theme/static/libs/js/$KEY/$libdir
        fi
      done
    fi
  fi
done
