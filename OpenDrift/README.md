# OpenDrift tutorial notebooks

## Description
This repository contains notebooks adapted (and inspired) from official [OpenDrift documentation](https://opendrift.github.io/gallery) for demonstration on EDITO Platform.

## Content
More specifically, you will find:

Notebooks adapted from [OpenDrift Gallery](https://opendrift.github.io/gallery):
- [A ShipDrift example](./example_shipdrift.ipynb), adapted from [there](https://opendrift.github.io/gallery/example_shipdrift.html)
- [A OpenBerg example](./example_openberg.ipynb), adapted from [there](https://opendrift.github.io/gallery/example_shipdrift.html)

Notebooks for EDITO, WeKEO and Marine Data Store:
- [A OpenDrift demo over Copernicus Marine Data Store data](./opendrift_demo.ipynb), with specific wrapper to copernicusmarine client (before integration of the latter in OpenDrift) accessing Copernicus Marine Global, North-west shelves MFC data from MDS and TOPAZ6 data from NERSC`s TDS and running simulations on each.

## Installing and running

> [!IMPORTANT]  
> Some notebooks will require credentials for the Copernicus Marine Data Store.
> Make sure you have configured your credentials on your running environement.

These notebooks were published for being run on EDITO. Still, you will be able to run them from any other jupyterhub session (local or remote). Directly jump to [this section](#running-on-other-environment) if you want to run notebooks outside of EDITO.


### Running the service from EDITO Datalab

> [!TIP]  
> If you have no experience on EDITO and the DataLab, you may want to read [EDITO Platform Overview](https://pub.pages.mercator-ocean.fr/edito-infra/edito-tutorials-content/#/PlatformOverview/platform-videos) pages .

The easiest way to run the service is using [the autolaunch function](https://datalab.dive.edito.eu/launcher/service-playground/jupyter-python-opendrift?name=jupyter-python-opendrift) as it can be found from the _*"Run OpenDrift"*_ tutorial panel under [the EDITO Ocean Modelling tutorials section](https://dive.edito.eu/training?search=ACCIBERG).

Go to the [next section](#providing-secrets) to define your secrets (optional)..


#### Providing secrets
To provide your secrets through application, EDITO Datalab uses a dedicated secret manager - _*Vault*_ - customizable from the _*"My Secrets"*_ section (see the [Managing secrets page](https://dive.edito.eu/training?search=Managing%20secrets) to discover more)

From there, you may define environment variables that will be readable from your applications.

For Copernicus Marine, as [explained in there](https://help.marine.copernicus.eu/en/articles/7970514-copernicus-marine-toolbox-installation), you will need to set the `COPERNICUSMARINE_SERVICE_USERNAME` `and COPERNICUSMARINE_SERVICE_PASSWORD` variables with your credentials`

Once done, the notebook application has to be informed of where to find these secrets, through the _*"Vault"*_ tab before launching the application. Provide in this tab the values that correspond to the directory (usually username) and path where secret variables are defined.

#### Setting your own EDITO environment

You may want running these notebooks from a blank Jupyterlab session. To do that, you will need to 1) init session environment, 2) clone repository content in the session.

To do so, the [following URL](https://datalab.dive.edito.eu/launcher/ide/jupyter-python?name=jupyter-python&autoLaunch=true&service.image.version=«inseefrlab%2Fonyxia-jupyter-python%3Apy3.11.10»&init.personalInit=«https%3A%2F%2Fgitlab.mercator-ocean.fr%2Fpub%2Fedito-model-lab%2Ftutorials%2F-%2Fraw%2Fmaster%2Fsources%2FOpenDrift%2Fscripts%2Finit.sh») will launch a blank jupyter-python session and running
a specific [`init.sh`](./scripts/init.sh) script that will do that for you.

### Running on other environment

For running the notebooks on a environment of your choice, you will need to clone this repository to you JupyterLab session.
For that, you may directly use the Clone repository function from the [JupyterLab Git extension](https://github.com/jupyterlab/jupyterlab-git).

## Contributing to the repository

Developers contribution would be happily merged to the code base through Merge Request. To get granted permissions to contribute to the project, please contact Mercator.
