<img src="https://gitlab.mercator-ocean.fr/pub/edito-infra/edito-tutorials-content/-/raw/fa1-deltares/articles/FA1-Deltares/Deltares_logo_D-blauw_RGB.png" align="centre" width="25%">

# Focus Application (FA) for habitat suitability mapping supporting Marine Protected Areas

## EDITO-Model Lab's Focus Applications (FAs) and What-if Scenarios (WiSs)
The European Digital Twin of the Ocean (EDITO) will provide an innovative set of user-driven and interactive decision-making tools. Within that framework, EDITO-Model Lab’s Focus Applications are demonstrators of the capabilities of the next generation of ocean models that the project is building. We will deliver our Focus Applications with high technology readiness level within three thematic areas that are related to key EU policy questions: marine biodiversity, greenhouse gas emissions from maritime shipping, and marine pollution. The FAs and WiSs are interactive virtual demonstrators hosted on the EDITO platform that incorporate powerful technical components (such as data, software, and computational infrastructure) into a user-friendly environment. You can read about *the added value of the EDITO Model Lab Focus Applications* [here](https://edito-modellab.eu/news/what-is-the-added-value-of-the-edito-model-lab-focus-applications-nbsp).

## Background of this Focus Application
This FA on marine biodiversity maps habitat suitability and produces biodiversity indicators. This enables the creation of third-party services that support policy makers in effectively (re-)assigning the targeted Marine Protected Areas and (re-)defining active legislation that facilitates the [EU Biodiversity Strategy](https://environment.ec.europa.eu/strategy/biodiversity-strategy-2030_en) and other international goals such as the those in the EU’s Nature Restoration Law, that states that 30% of the ocean should be conserved and 30% of degraded ecosystems need to be restored by 2030.

## Workflow of the Focus Application
This application enables intermediate users to create easily reproducible habitat suitability maps anywhere along the global coast where spatial data and ecological knowledge is available, as the EDITO tools and models are published. More specifically, intermediate users will be enabled to:
- Setup a new Delft3D-FM coastal model simualting physical and biogeochemical (under development) spatial data using EDITO’s Dfm-Modelbuilder.
- Use spatial data from EDITO Data Lake (under development) or alternative sources. Or simulate new spatial data using EDITO’s [relocatable coastal numerical models](https://dive.edito.eu/training?search=&path=%5B%22EDITO%20Core%20Model%20Suite%22%2C%22Ocean%20models%22%5D), [like Delft3D FM](https://dive.edito.eu/training?search=&path=%5B%22EDITO%20Core%20Model%20Suite%22%2C%22Ocean%20models%22%2C%22Delft3D_FM%22%5D), [NEMO](https://dive.edito.eu/training?search=&path=%5B%22EDITO%20Core%20Model%20Suite%22%2C%22Ocean%20models%22%2C%22NEMO%22%5D),[SCHISM](https://dive.edito.eu/training?search=&path=%5B%22EDITO%20Core%20Model%20Suite%22%2C%22Ocean%20models%22%2C%22SCHISM%22%5D) and [HBM](https://dive.edito.eu/training?search=&path=%5B%22EDITO%20Core%20Model%20Suite%22%2C%22Ocean%20models%22%2C%22HBMos%22%5D).
- Use existing or add ecological knowledge on the habitat species response to physical and biogeochemical conditions, through interactive notebooks (under development). 
- Compute habitat suitability maps, by applying the ecological knowledge rules to the spatial data with D-Eco Impact.

To get habitat suitability maps we combine:
- Spatial data of physical parameters, relevant for the specie of interest.
- Ecological knowledge rules, consisting of response curves of a Habitat Suitability Index (HSI), relative to the physical parameters.
- Ecological Impact Assessment tool, that computes a spatial Habitat Suitability Map.

This tutorial will lead you through a full workflow, from scratch to results, using the following technical components:
1. Automatically generate a new model for simulations with [Delft3D FM modelbuilder](https://datalab.dive.edito.eu/catalog/All?search=Delft3dfm-modelbuilder). 
2. Simulate relevant spatial data by running [Delft3D FM](https://datalab.dive.edito.eu/process-catalog/All?search=Delft3dfm) or any other suimulation software. 
3. Parallelly, define ecological knowledge rules: choose existing response curves [(for example from here)](https://publicwiki.deltares.nl/display/HBTHOME/Ecological+knowledge+base) or create new ones.
4. Compute Habitat Suitability Maps with [D-Eco Impact](https://datalab.dive.edito.eu/process-catalog/All?search=d-ecoimpact)
5. Plot the results with the [Post-processing service for D-Eco Impact results](https://datalab.dive.edito.eu/catalog/All?search=d-ecoimpact-postprocess%20)

## Setting up a new Delft3D-FM coastal model on EDITO
We use [**Delft3D FM modelbuilder**](https://datalab.dive.edito.eu/catalog/All?search=Delft3dfm-modelbuilder) to automatically set up a model to run the hydrodynamic module of Delft3D FM. The steps are the following. See [this link](https://www.deltares.nl/en/software-and-data/products/delft3d-fm-suite/modules) for more info on the modules of Delft3D FM. Note that in this example a 2D model will be created. Setting up 3D models follows the same procedure. 

If we ***launch*** the [modelbuilder](https://datalab.dive.edito.eu/catalog/All?search=Delft3dfm-modelbuilder), a Jupyter notebook environment is configured and loaded *(this may take some time, depending on the amount of resources allocated)*. When finished, the JupyterLab environment is opened. The *modelbuilder_example_edito.ipynb* can be run at once, or step by step. For first-time users, we advice to do the latter.

In **step 1** you save account settings for [CMEMS](https://data.marine.copernicus.eu/register) and [Climate Data Store](https://cds.climate.copernicus.eu/profile) as *"credentials"* on the EDITO platform if not done so already.

In **step 2** you define the spatiotemporal domain of your the model you want to set up, by:
- Defining a name for the model. As an example you could choose *"WaddenSea"*.
- Define the bounding longitude and latitude, creating a rectangular spatial domain. As an example you could set the coordinates to that of the Eastern part of the Dutch Wadden Sea, by adding the line: *else : lon_min, lon_max, lat_min, lat_max = 6, 7.4, 53.2, 54*.
- Defining the spatial resolution with a value *dxy* in degrees. Standard value *0.05°* is *1/20th* degree.
- Defining the timerange for the simulation, We chose two months in 2017 for this example. 
- Creating an output directory

In **step 3** a grid is created, based on [GEBCO bathymetry](https://www.gebco.net/). The refinement is from user defined resolution *dxy* (roughest) to *minimum_edge_size* (finest resolution). For the example of the Eastern Dutch Wadden Sea, we propose to choose 800 meter as a refinement. Automatic plots will be provided to understand what is created by these blocks, they will look similar to the following figures.. 

| <img src="https://gitlab.mercator-ocean.fr/pub/edito-model-lab/tutorials/-/raw/master/sources/Habitat_Suitability_Mapping/BaseGrid_Bathymetry_WaddenSea_example.png" align="centre" width="100%"> |
|:--:| 
| Generated model for example domain in the Wadden Sea with on the left the base grid in blue (that can be refined) and with open boundary in red for which boundary conditions are downloaded from CMEMS. On the right the bathymetry on a refined grid.|

In **step 4** boundary conditions are created by loading data from FES for waterlevels and CMEMS for hydrodynamic and biogeochemical data. In the 3rd block (that downloads spatial fields from CMEMS) it is common that a lot of information and warnings pops up. 

In **step 5** initial conditions and meteorological forcing are created with CMEMS- and CDS data. Here too, a lot of information will pop up and it might be that ypou have to manually give the CDS-API-key (copy the "API token" from [your cds profile](https://cds.climate.copernicus.eu/profile)). At the end of this step the initial conditions and forcings are saved as model input and plotted.  

In **step 6** so-called "observation locations" are created. At these locations time series are written with data at a smaller time interval than the spatial data output. Time series can be used for analysis, callibartion or validation. The locations, if possible, coincide with locations of buoys or of other sources of in-situ observed data. In this example, 10 locations are selected at random. The observations points are saved as model input and plotted.  

In **step 7** the master definition unit (mdu) is written. Delft3D FM can simulate many hydrophysical processes, but only does so when they are switched "on". 

In **step 8** an executable is created. You can define the number of processes, where multiple processes means partitioning and parallisation during execution. By default, the dimrset_folder is defined as "none". We will result in a Docker container to be created.  

In **step 9** the model tree is visualised, this is an optional step.

Step **10** offers some follow up steps. The *"run_parallel.bat"* cannot be run, as we defined "none" in **step 8**. Instead, running the Delft3D FM is explained in the next section. 

In the **extra cells** some adjustments are made to the mdu and executable, in order to ensure that the model works with the [Delft3dfm-run-docker process](https://datalab.dive.edito.eu/process-catalog/All?search=Delft3d-fm) that is explained in the next section. 

In the last cell, you copy the model folder from the JupyterLab environment to your personal s3 bucket ([*"My Files"* on EDITO platform](https://datalab.dive.edito.eu/my-files)). 

## Launching a Delft3D FM simulation on EDITO
A second step is to run the physical simulation software. 

The software is containerized in standard formats [Docker container](https://www.docker.com/resources/what-container/) and/or [Apptainer](https://apptainer.org/). These containers can be used to run the software on the EDITO platform without downloads and installations. The simulation is computed either:
- in the cloud with [Delft3dfm-run-docker](https://datalab.dive.edito.eu/process-catalog/All?search=Delft3dfm-docker)
- or on a High Performance Computer cluster (still in progress)

| <img src="https://gitlab.mercator-ocean.fr/pub/edito-infra/edito-tutorials-content/-/raw/fa1-deltares/articles/FA1-Deltares/delft3d-fm_containerized.png" width="70%" align="centre"> |
|:--:| 
| Delft3D-FM container solutions for cloud and HPC computing|

The detailed steps are:
- check if you have a full model folder, called *DFM_INPUT* in [*"My Files"* on EDITO platform](https://datalab.dive.edito.eu/my-files)
- the folder should also contain a filed, called *"run_docker.sh"*
- in the public process catalog you can find the [*“Delft3dfm-run-docker”* process](https://datalab.dive.edito.eu/process-catalog/All?search=Delft3dfm-docker)
- if you click ***"launch"***, the Delft3D FM docker image is executed (we recommend to maximize the allocated resources).
- after running there is an output folder created, called *DFM_OUTPUT*. this folder contains metadata, temporal data for observations points in his-files and spatiotemporal data in map-files. The latter we will use for Habitat Suitability Modelling with D-Eco Impact.

## Prepare ecological knowledge in configuration file for D-Eco Impact

Spatial data can be used to compute the suitability of an area for certain (habitat) species. To make this conversion, we will use so-called *response curves"*, that can be based on local expert ecological knowledge. 

The response curves are defined in a configuration *(.yaml)* file, [like this example .yaml file for Habitat Suitability Modelling](https://github.com/Deltares-research/EditoServices/blob/main/d_eco_impact_yaml/Example/EDITO_Eelgrass_knowledge_rules.yaml). Additionally, the .yaml file contains operation to combine multiple knowledge rules.
 
Currently the service to convert ecological response curves public repositories like the [HABITAT repository](https://publicwiki.deltares.nl/display/HBTHOME/Ecological+knowledge+base), into configuration files for D-Eco Impact is still in progress.  

For the example, we propose you to download [this example .yaml file](https://github.com/Deltares-research/EditoServices/blob/main/d_eco_impact_yaml/Example/EDITO_Eelgrass_knowledge_rules.yaml) and upload it to your s3 bucket (or *"My Files"*).


| <img src="https://gitlab.mercator-ocean.fr/pub/edito-model-lab/tutorials/-/raw/master/sources/Habitat_Suitability_Mapping/Eelgrass_knowledge_rules_flowvelocity_inundationtime.png" align="centre" width="70%"> |
|:--:| 
| Examples of two ecological knowledge rules for Eelgrass Zostera Marina and Zostera Noltii combined. The left panel is the Habitat Suitability Index (HSI) for Eelgrass as a response to inundation time (% of time that the location is inundated). The first peak represents suitability for Zostera Noltii, that thrives in intertidal mudflats and requires both non-inundated and inundated periods. The second peak in the left panel represents Zostera Marina, that thrives in near-continuous inundation. The right panel shows the HSI of Eelgrass relative to the Flow Velocity.  |

<!-- ## Create new ecological knowledge rules for D-Eco Impact 
Now we have spatiotemporal data from the physical parameters of interest (like water depth). We will combine this data with knowledge rules on how the habitat specie responds to the conditions. We will create a configuration (.yaml) file, by either using knowledge rules from [HABITAT repository](https://publicwiki.deltares.nl/display/HBTHOME/Ecological+knowledge+base) or create new rules.

The detailed steps are:
- open a service called “D-Eco Impact_yaml_create”
- Jupyter Notebook environment is initialized
- main Notebook is run, to open an interactive notebook
- define the name of the specie, in this case Pacific Oyster
- define a first knowledge rule in this case for the parameter water depth
- adapt the response curves: x-values for the physical parameter and y-values for HIS
- define input and output filenames for running D-Eco Impact 
- create configuration file in .yaml format
- open this file
- upload the file to s3 bucket
- and check if the file is under "My Files" (in the s3 bucket)
-->

## Compute habitat suitability maps on the EDITO platfporm, using D-Eco Impact

The last step in the workflow is to launch D-Eco Impact. We can create new response curves (in progress) or use existing response curves. 

If not done so already, download the example for Eelgrass in the Wadden Sea from [this repository](https://github.com/Deltares-research/EditoServices/blob/main/d_eco_impact_yaml/Example/EDITO_Eelgrass_knowledge_rules.yaml). You can find the download button on the top-right corner. After downloading locally, please copy it to *My Files*.

In this example we combined the response of seagrass *"Zostera Marina"* to a few physical parameters (water level, current velocities, sea temperature and salinity) to produce the final combined Habitat Suitability Map. 

The detailed steps are:
- open [D-ecoimpact](https://datalab.dive.edito.eu/process-catalog/All?search=d-ecoimpact)
- In the *D-ecoimpact configurations / ProcessInputs* provide the name and path to the .yaml config file
- launch the process, which will (invisibly) apply the knowledge rules to the spatial input data as defined in the .yaml file
- when you refresh the "My Files" (s3 bucket), you see that two new files with D-Eco Impact output (.nc) and log file (.log) are saved 
- the NetCDF (.nc) file contains spatial output of Habitat Suitability on a scale of 0 (not suitable) to 1 (very suitable). 

## Visualise resulting habitat suitability maps
To plot the results from the Habitat Suitability Modelling use the [service for post-processing](https://datalab.dive.edito.eu/catalog/All?search=D-ecoimpact-postprocess). 

After launching a JupyterLab environment is opened, similar to the environment that you opened for the modelbuilder, but with different scripts. We will use the notebook: *postprocessing_example.ipynb*,

The **first cell** imports relevant packages. 

The **second cell** requires user input on where the D-Eco Impact data is stored and where you want the figures to be stored. You can keep the values as is if you follow the example of this workflow. 

The **third cell** opens the D-Eco Impact data data and plots the grid.

The **fourth cell** prints the data catalogue using *uds_map*. This is helpful to check what variables are available.

The **fifth cell** defines the variables that will be plotted in a loop. The figures will look like the examples below. 

| <img src="https://gitlab.mercator-ocean.fr/pub/edito-model-lab/tutorials/-/raw/master/sources/Habitat_Suitability_Mapping/Flow_Velocity_max_HSI.png" align="centre" width="100%"> |
|:--:| 
| Plots of the D-Eco Impact results. On the left side the maximum flow velocity over the simulated period (1st week of November 2022). On the right side the  Suitability Index for eelgrass, related to the maximum flow velocity. With red very suitable, white not very suitabile and transcendednt 0% suitability.

The **sixth cell** plots the validation data that was defines in the first cell,

The **seventh cell** is extra and allows you to plot validation and simulated data in the same bounding boxes for visual validation. Using the example input, the plots will look like the figures below. 

The **last cell** allows an upload to the *"My Files"* (s3 bucket). 

When you have recreated the example simulations for a subdomain of the Wadden Sea, as provided in this tutorial, the processed results will look similar to the following figures.
 
| <img src="https://gitlab.mercator-ocean.fr/pub/edito-model-lab/tutorials/-/raw/master/sources/Habitat_Suitability_Mapping/Simulated_observed_data_comparebox.png" align="centre" width="100%"> |
|:--:| 
| Validation plots for comparing simulated suitability for eelgrass (Zostera Noltii and Zostera Marina) and observed occurance of eelgrass in the same area. The simulated suitability is based on merely 1 week of simulation, and serves demonstration purposes, rather than scientific purposes. |

# Scientific background
## Software used
### Delft3D FM
For generating spatial data Delft3D FM suite is used, an Ocean Model of the EDITO Core Model Suite. Delft3D FM  can simulate storm surges, hurricanes, tsunamis, detailed flows and water levels, waves, sediment transport, morphology, water quality and ecology, and is capable of handling the interactions between these processes. The software is open source and has a user base of over 35.000 experts worldwide. The software has been distributed by executables for decades and is now (partly) available through the EDITO platform. Read more about Delft3D FM [here](https://gitlab.mercator-ocean.fr/pub/edito-model-lab/tutorials/-/blob/master/sources/Delft3D_FM/tutorial.md).

### D-Eco Impact
For processing the spatial to habitat suitability maps, D-Eco Impact is used. [D-Eco Impact](https://www.deltares.nl/en/software-and-data/products/d-eco-impact) is a post-processing tool that enables users to use ecological knowledge (the response of species to a physical parameter like salinity) and compute the likelihood or suitability for existence of that specie on a specific grid cell. This computed for multiple knowledge rules and for all the spatial cells, gives resulting Habitat Suitability maps that can help policy makers with their restoration and conservation policy and action. 

## Ecological knowledge rules
Although this Focus Application is globally relocatable, local ecological knowledge is essential for userful results. Deltares has developed this workflow for the Dutch Wadden Sea as a test case. To couple physical parameters to suitability for habitat species, ecological knowledge rules were derived from a [public database](https://publicwiki.deltares.nl/display/HBTHOME/Ecological+knowledge+base) and from additional sources (de Jong et al., 2005), (Zhou, et al. 2016), (Annelli Monti et al. 2021), (Bos et al. 2005). In the example notebook (see link section 2.1) of habitat suitability for the Wadden Sea, the suitability of the Wadden Sea for Eelgrass (Zostera Noltii and Zostera Marina) is computed. Similar studies were also done for Pacific Oysters and Mussels. 

## Real-size simulations
This tutorial is examplary to demonstrate the approach and how the components can be used. For scientific simulations more care is needed in setting up the model and more resources are needed for running the model for at least a full year. The following pucture for the entire Wadden Sea domain shows much better correspondence to the validation data, than the plots produced in the example in this tutorial.

| <img src="https://gitlab.mercator-ocean.fr/pub/edito-model-lab/tutorials/-/raw/master/sources/Habitat_Suitability_Mapping/Simulated_suitability_eelgrass2017.png" align="centre" width="60%"> |
|:--:| 
| Calculated minimum Habitat Suitability Index (HSI) for 2 Seagrass species, resulted from D-Eco Impact post-processing of Delft3D FM generated spatial data for the entire year of 2017. |

## Validation data
Multiple research surveys on the Wadden Sea, resulted in spatial records of observed occurrence of the habitat species. These spatial data records were used to validate the modelling approach and the ecological knowledge rules. The source for validation data for bivalves (mussels and pacific oysters) was gained from Wageningen Marine Research (van der Meer et al, 2019) and for Eelgrass from the Dutch National Seagrass mapping [Link to database](https://maps.rijkswaterstaat.nl/dataregister/srv/dut/catalog.search#/metadata/095fc70b-11c3-4cb5-82da-454503fc7a13).

## References
Anelli Monti, M.,Brigolin, D.,Franzoi, P., Libralato, S., Pastres, R., Solidoro, C., Zucchetta, M. & Pranovi, F. (2021). Ecosystem functioning and ecological status in the Venice lagoon, which relationships?. EcologicalIndicators. Vol 133. https://dx.doi.org/10.1016/j.ecolind.2021.108461  

Bos, A. R., Dankers, N. M. J. A., Groeneweg, A. H., Hermus, D. C. R., Jager, Z., de Jong, D. J., Smit, T., de Vlas, J., van Wieringen, M., & van Katwijk, M. M. (2005). Eelgrass (Zostera marina L.) in the western Wadden Sea: monitoring, habitat suitability model, transplantations and communication. Proceedings Dunes and Estuaries 2005, VLIZ Special Publication 19 (pp. 95-109). 

De Jong, D. J., van Katwijk, M. M. & Brinkman, A. G. (2005) Kansenkaart zeegras Waddenzee : potentiële groeimogelijkheden voor zeegras in de Waddenzee.(Rapport RIKZ 2005.013)

van der Meer, J., Dankers, N., Ens, B.J. et al., “The birth, growth and death of intertidal soft-sediment bivalve beds: No need for large-scale restoration programs in the Dutch Wadden sea,” Ecosystems, vol. 22, pp. 1024–1034, 2019.

J. Zhou, Q. Wang, W. Zhao, D. Yu, and S. Guan, “Habitat suitability analysis of eelgrass Zostera marina l. in the subtidal zone of xiaoheishan island,” Chinese Journal of Oceanology and Limnology, vol. 34, no. 1, pp. 69–78, 2016.