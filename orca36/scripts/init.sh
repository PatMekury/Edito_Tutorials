#!bin/bash

BRANCH="${1:-master}"
echo $BRANCH

#touch "start_cloning"
git clone --depth 1 --branch ${BRANCH} --no-checkout https://gitlab.mercator-ocean.fr/pub/edito-model-lab/tutorials/ $HOME/work/tutorials
cd $HOME/work/tutorials
git sparse-checkout set sources/orca36
git checkout ${BRANCH}
cd sources/orca36
