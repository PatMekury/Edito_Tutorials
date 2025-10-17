#!bin/bash

#Works - python 3.11

#Works - mamba python 3.11 + original
wget -P /tmp/ https://gitlab.mercator-ocean.fr/pub/edito-model-lab/tutorials/raw/cf-checker/sources/CfChecker/cfg/py311.yml
mamba env update --name base --file /tmp/py311.yml

#touch "start_cloning"
git clone --depth 1 --branch master --no-checkout https://gitlab.mercator-ocean.fr/pub/edito-model-lab/tutorials/ $HOME/work/tutorials
cd $HOME/work/tutorials
git sparse-checkout set sources/CfChecker
git checkout master
cd sources/CfChecker
