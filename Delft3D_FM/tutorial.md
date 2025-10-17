![Logo](Deltares_logo_D-blauw_RGB.png)

# Delft3D FM software suite tutorial
The Delft3D FM Suite can simulate storm surges, hurricanes, tsunamis, detailed flows and water levels, waves, sediment transport, morphology, water quality and ecology, and is capable of handling the interactions between these processes. The software is open source and has a user base of over 35.000 experts worldwide. The software has been distributed by executables for decades and is now (partly) available through the EDITO platform. 

See these links for more information:
- [Link to general information](https://www.deltares.nl/en/software-and-data/products/delft3d-flexible-mesh-suite).
- [Link to an overview of the modules](https://www.deltares.nl/en/software-and-data/products/delft3d-fm-suite/modules)
- [Link to technical user manuals](https://oss.deltares.nl/web/delft3dfm/downloads)

This tutorial provides general information on the Delft3D FM suite software components that are available on the EDITO platform. For a more practical use case, that follow examplary applications the following tutorial can be useful:
- [Tutorial on Habitat Suitability modelling](https://gitlab.mercator-ocean.fr/pub/edito-infra/edito-tutorials-content/-/blob/fa1-deltares/articles/FA1-Deltares/fa1-deltares-tutorial.md?ref_type=heads)
- [Tutorial on aquaculture impact modelling](https://gitlab.mercator-ocean.fr/pub/edito-infra/edito-tutorials-content/-/blob/wis3-deltares/articles/WIS3-Deltares/wis3-deltares-tutorial.md?ref_type=heads)

## Delft3D FM software suite components
Multiple processes and services that are related to or part of the Delft3D FM software suite are available on the EDITO platform. 

### Delft3D FM Model builder
A service to automatically generates the file structure with initial- and boundary conditions for a simulation with Delft3D FM on the EDITO platform. Currently this service can only set up models that use the Hydrodynamic module. This se4rvice allows on-demand simulations by users for anywhere around the world. The service is available in a Jupyter Notebook interactive tutorial and provides and example case, see link hereunder.

[Link to Delft3dfm-modelbuilder](https://datalab.dive.edito.eu/catalog/All?search=delft3dfm-modelbuilder)

### Delft3D FM cloud simulation (single node)
This process runs a docker container of Delft3D FM on a cloud node of the EDITO platform. To be able to run this process the right file structure should be set up in the personal storage on the EDITO platform (S3 bucket). This structure can be automatically set up by the Delft3D FM modelbuilder or manually set up in a folder that should be named *DFM_INPUT*. When the simulation is started succesfully, the output will be saved in a folder called *DFM_OUTPUT*. Note that the Docker container is a so-called *"blackbox"*. There is limited interaction with the process, but information about the simulation start-up, exencution and wrap-up is saved in a diagnosticcs *(.dia)* file. 

[Link to Delft3dfm-modelbuilder](https://datalab.dive.edito.eu/process-catalog/All?search=delft3dfm)

### Delft3D FM HPC simulation (parallel nodes)
This process will launch an Apptainer container of Delft3D FM from the EDITO platform to a Euro-HPC cluster. **This process will be released soon.** 

### D-Eco Impact
This post processing tool is related to the Delft3D FM software suite, but can be used to process any spatial dat in U-Grid format to analyse with ecological knowledge. In the [tutorial on Habitat Suitability modelling](https://gitlab.mercator-ocean.fr/pub/edito-infra/edito-tutorials-content/-/blob/fa1-deltares/articles/FA1-Deltares/fa1-deltares-tutorial.md?ref_type=heads) D-Eco Impact is used. 

- [Link to general information](https://www.deltares.nl/en/software-and-data/products/d-eco-impact)
- [Link to the open source github page](https://github.com/Deltares/D-EcoImpact)

## Working on the EDITO platform
To execute processes on the EDITO platform, you need to have access to the Edito platform. The link to register is:

[Registration Link](https://auth.lab.dive.edito.eu/auth/realms/datalab/login-actions/registration?client_id=onyxia&tab_id=v7ZzJLSVUwU)

After obtaining your login, you need to log into the platform to access all internal resources. Below is a sample screenshot of the login page:

To log in, use this [Link](https://auth.lab.dive.edito.eu/auth/realms/datalab/protocol/openid-connect/auth?client_id=onyxia&response_type=code&scope=openid+profile&state=eef59efecf3640778f23368684114a62&code_challenge=kUlFtN1zcshm1bnQFmFeiHk950KLL72g0DedvYtsSQA&code_challenge_method=S256&response_mode=query&onyxia-instance-public-url=https%3A%2F%2Fdatalab.dive.edito.eu&ui_locales=en&redirect_uri=https%3A%2F%2Fdatalab.dive.edito.eu%2F%3Foidc-spa_config_hash%3D9dac8833%26oidc-spa_result_omit%3DWyJvaWRjLXNwYV9jb25maWdfaGFzaCJd%26oidc-spa_intent%3De30%253D)