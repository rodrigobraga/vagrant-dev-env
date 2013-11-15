#!/bin/bash

cd /home/vagrant/ &&

if [[ ! -d venv ]]; then
        echo "create virtualenv dir"
        mkdir venv;
fi;

if [[ ! -d repos ]]; then
        echo "create repos dir"
        mkdir repos;
fi;

for param in "$@"
do
    cd /home/vagrant/venv/ &&

    virtualenv $param
    echo "create virtualenv for $param";

    source /home/vagrant/venv/$param/bin/activate
    echo "virtualenv for $param was activated";

    cd /home/vagrant/repos/ &&

    git clone git@bitbucket.org:rodrigobraga/$param.git
    echo "$param was cloned";

    cd /home/vagrant/repos/$param/ &&

    if [[ -f "requirements.txt" ]]; then
        pip install -r requirements.txt
        echo "requirements have been installed with pip";
    fi;

    if [[ -f "packages.json" ]]; then
        npm install;
        echo "packages from npm have been installed"
    fi;

    if [[ -f "bower.json"  ]]; then
        bower install;
        echo "packages from Bower have been installed"
    fi;    

    deactivate

done

echo "virtualenv and repositories are done!" || (echo erro; exit 1);