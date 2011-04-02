### @export "download-virtualenv"
curl -O http://pypi.python.org/packages/source/v/virtualenv/virtualenv-1.5.1.tar.gz
tar -xzvf virtualenv-1.5.1.tar.gz

### @export "create-virtualenv"
python2.7 virtualenv-1.5.1/virtualenv.py --no-site-packages dexy_env

### @export "activate-virtualenv"
source dexy_env/bin/activate

### @export "which-easy-install"
which easy_install

### @export "install-nose"
easy_install nose

### @export "install-dexy"
easy_install dexy

### @export "check-install"
dexy --version
dexy --help

### @export "source-install-dexy"
hg clone https://bitbucket.org/ananelson/dexy
cd dexy
easy_install .
nosetests
dexy --setup
cd ..

### @export "show-versions-virtualenv"
which python
python --version
which dexy
dexy --version

### @export "deactivate-virtualenv"
deactivate

### @export "show-versions"
which python
python --version
which dexy
