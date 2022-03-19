#!/bin/sh
. $(dirname $0)/path.sh

if [ -f dsqss-${VERSION_BASE}.orig.tar.gz ]; then
  exit 127
fi
wget https://github.com/issp-center-dev/dsqss/archive/v${VERSION_BASE}.tar.gz -O dsqss-${VERSION_BASE}.tar.gz
mkdir dsqss-${VERSION_BASE}
tar zxvf dsqss-${VERSION_BASE}.tar.gz -C dsqss-${VERSION_BASE} --strip-component=1
tar zcvf dsqss_${VERSION_BASE}.orig.tar.gz dsqss-${VERSION_BASE}
rm -rf dsqss-${VERSION_BASE} dsqss-${VERSION_BASE}.tar.gz
