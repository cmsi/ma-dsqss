# ma-dsqss

## How to prepare source files for phi package

1. ソースファイルの準備 (ホスト上で)

        VERSION=1.1.17+pv1.1.3
        VERSIONM=$(echo $VERSION | sed 's/+/-/')
        cd $HOME/vagrant/data/src
        wget https://github.com/qmc/dsqss/archive/v$VERSION.tar.gz
        tar zxvf v$VERSION.tar.gz
        mv -f dsqss-$VERSIONM dsqss_$VERSION
        tar zcvf dsqss_$VERSION.orig.tar.gz dsqss_$VERSION
