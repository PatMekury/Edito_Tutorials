<img src="https://gitlab.mercator-ocean.fr/pub/edito-infra/edito-tutorials-content/-/raw/fa1-deltares/articles/FA1-Deltares/Deltares_logo_D-blauw_RGB.png" width="25%">

# What-if Scenario (WiS) on the impact of increased shellfish cultivation on the carbon cycle in the North Sea
<img src="https://gitlab.mercator-ocean.fr/pub/edito-infra/edito-tutorials-content/-/raw/wis3-deltares/articles/WIS3-Deltares/collaboration_ULTFARMS.png" width="25%">

This What-if Scenario was implemented in collaboration with [ULTFARMS](https://ultfarms.eu/), a pioneering Horizon Europe Ocean Mission project that is set to transform the future of Low-Trophic Aquaculture (LTA) systems.

## EDITO-Model Lab's Focus Applications (FAs) and What-if Scenarios (WiSs)
The European Digital Twin of the Ocean (EDITO) will provide an innovative set of user-driven and interactive decision-making tools. Within that framework, EDITO-Model Lab’s Focus Applications are demonstrators of the capabilities of the next generation of ocean models that the project is building. We will deliver our Focus Applications with high technology readiness level within three thematic areas that are related to key EU policy questions: marine biodiversity, greenhouse gas emissions from maritime shipping, and marine pollution. The FAs and WiSs are interactive virtual demonstrators hosted on the EDITO platform that incorporate powerful technical components (such as data, software, and computational infrastructure) into a user-friendly environment. You can read what you can do with EDITO-MODEL LAB *WHAT-IF* scenarios [here](https://edito-modellab.eu/news/what-can-you-do-with-the-edito-model-lab-what-if-scenarios).

## Objective of this What-if Scenario
To meet the Paris Agreement, there are [develpments of offshore wind parks in the (Dutch) North Sea](https://www.government.nl/topics/renewable-energy/offshore-wind-energy). 

| <img src="https://gitlab.mercator-ocean.fr/pub/edito-infra/edito-tutorials-content/-/raw/wis3-deltares/articles/WIS3-Deltares/HKZ.jpg" width="150%"> |
|:--:| 
| Picture of Hollandse Kust Zuid (Dutch Coast South) wind park|

The space within these parks is suitable for multi-use, including shellfish aquaculture. There are plans to upscale from pilots to large scale shellfish aquaculture sites (multiple km^2). Upscaling the cultivation of shellfish is part of the envisioned “blue economy” and a promising option for multi-use of offshore wind parks.

| <img src="https://gitlab.mercator-ocean.fr/pub/edito-infra/edito-tutorials-content/-/raw/wis3-deltares/articles/WIS3-Deltares/multi-use_illustration.png" width="75%"> |
|:--:| 
| Illustration of aquaculture in offshore wind park by Hendrik Gheerardyn (2022)|

This what-if scenario is about the impact of the planned upscaling of the shellfish cultivation in the North Sea on the carbon cycle.  As shellfish are respiring organisms, they are a carbon source. At the same time shells are a carbon storage as they are built through biocalcification, a process that turns dissolved carbon and calcium into calcium carbonate. The application helps to quantify the effects of upscaling shellfish cultivation in the North Sea on the carbon cycle. This is done by implementing a biocalcification module (Stechele & Lavaud, manuscript submitted for publication in 2024), in the Dynamic Energy Budget (DEB) module integrated in Delft3D-FM’s water quality process library (Troost et al., 2010; Deltares, 2023). Our work includes assumptions about how harvesting accounts for calcium carbonate leaving the sea and is therefore sequestrated. 

## Interactive dashboard to explore the increased shellfish cultivation what-if scenarios
Through an interactive dashboard [Click here to open](https://app.powerbi.com/view?r=eyJrIjoiOWQxMDA2N2UtZTIyNy00YjFmLTg4ZTctOWEyYjI4NDU3MzQ2IiwidCI6IjE1ZjNmZTBlLWQ3MTItNDk4MS1iYzdjLWZlOTQ5YWYyMTViYiIsImMiOjh9), you can explore the impact of increased shellfish cultivation on the carbon cycle in the North Sea (Dutch territorial waters). You can choose a multi-use shellfish aquculture scenario and see the impacts on carbon fluxes, total carbon sequestration, the ratio of organic/inogranic matter in the water and in the harvested carbon, as well as impacts on ocean aidification.

<img src="https://gitlab.mercator-ocean.fr/pub/edito-infra/edito-tutorials-content/-/raw/wis3-deltares/articles/WIS3-Deltares/dashboard.png" width="100%">

Interactive dashboard to explore the increased shellfish cultivation what-if scenarios [Click here to open](https://app.powerbi.com/view?r=eyJrIjoiOWQxMDA2N2UtZTIyNy00YjFmLTg4ZTctOWEyYjI4NDU3MzQ2IiwidCI6IjE1ZjNmZTBlLWQ3MTItNDk4MS1iYzdjLWZlOTQ5YWYyMTViYiIsImMiOjh9)

## Underlying simulations for this What-if Scenario
Simulation of the growth of shellfish, including their shells and the impact on biogeochemical fluxes and states have been executed with Delft3D FM. There is a manual about this software suite on the EDITO Platform [here](link to manual) and the software is available on the platform as a process (although not to full extend due to computational limitations) [link to Delft3D FM process](https://datalab.dive.edito.eu/process-catalog/All?search=delft3dfm).

The simulation of growth was over a full cultivation cycle (May 1st year n to September 31st year n+1) and was done with the Delft3D-FM model of the Dutch Continental Shelf (DCSM) simulates hydrodynamics & biogeochemistry on a flexible grid: 4 nm in deeper ocean (yellow) up to 0.5 nm in shallow coastal regions and in the area of interest (red), which covers all of the Dutch exclusive economic zone.

| <img src="https://gitlab.mercator-ocean.fr/pub/edito-infra/edito-tutorials-content/-/raw/wis3-deltares/articles/WIS3-Deltares/DCSM.png" width="50%"> |
|:--:| 
| Bathymetry of 6th Generation Dutch Continental Shelf Model, [3D DCSM-FM (Zijl et al. 2023)](https://www.deltares.nl/expertise/publicaties/3d-dcsm-fm-a-sixth-generation-model-for-the-nw-european-shelf-2022-release)|

## Scientific background of this What-if Scenario

### Carbon fluxes
The impact of shellfish on the carbon cycle can be investigated by quantifying carbon fluxes between the shellfish and the environment (ocean, air, sediment) as shown in the figure below.

| <img src="https://gitlab.mercator-ocean.fr/pub/edito-infra/edito-tutorials-content/-/raw/wis3-deltares/articles/WIS3-Deltares/carbon_fluxes_environment.png" width="50%"> |
|:--:| 
| Carbon processes in the environemtn related to shellfish [Filgueira et al., 2015](https://www.researchgate.net/publication/270568415_An_Integrated_Ecosystem_Approach_for_Assessing_the_Potential_Role_of_Cultivated_Bivalve_Shells_as_Part_of_the_Carbon_Trading_System))|

Categorizing those by carbon sinks and sources (see figure below) gives the possbility to derive net results per simplified carbon fluxes (harvesting, biocalcification, faeces, respiration). 

| <img src="https://gitlab.mercator-ocean.fr/pub/edito-infra/edito-tutorials-content/-/raw/wis3-deltares/articles/WIS3-Deltares/carbon_fluxes_categories.png" width="50%"> |
|:--:| 
| Carbon fluxes categorized by sink or source, adopted from [Álvarez-Salgado et al., 2022](https://www.sciencedirect.com/science/article/pii/S004896972204966X)|

| <img src="https://gitlab.mercator-ocean.fr/pub/edito-infra/edito-tutorials-content/-/raw/wis3-deltares/articles/WIS3-Deltares/simplified_carbon_fluxes.png" width="50%"> |
|:--:| 
| Simplified carbon fluxes [Álvarez-Salgado et al. 2022](https://www.sciencedirect.com/science/article/pii/S004896972204966X)|

### Biogeochemical & shellfish model schematizations
The process of biocalcification [Stechele & Lavaud, 2024](https://www.researchgate.net/publication/384512290_Including_ocean_acidification_effects_on_biocalcification_through_dynamic_energy_budget_modelling) is added to the DEB-module, integrated in Delft3D-FM-WAQ, which is the underlying model for this what-if scenario. 

Interested users can execute new Delft3D-FM-WAQ simulations using EDITO’s Process Catalogue. You can launch a Delft3D-FM-WAQ simulation on EDITO [here](https://datalab.dive.edito.eu/process-catalog/All?search=Delft3d-fm). 

| <img src="https://gitlab.mercator-ocean.fr/pub/edito-infra/edito-tutorials-content/-/raw/wis3-deltares/articles/WIS3-Deltares/delwaq_DEB.png" width="100%"> |
|:--:| 
| Schematization of Water Biogeochemical model in Delft3D-FM-WAQ (left) and schematized DEB representation of shellfish, with extension of shell formation (red), as integrated in Delft3D-FM-WAQ (right)|

### Scenarios for aquaculture in Dutch offshore wind parks
For upscaling shellfish aquaculture scenarios, we assessed the suitability of planned and existing wind parks using a fuzzy logic approach, a method based on the approach by Steenbergen et al. (2023), which can be found [here](https://research.wur.nl/en/publications/kansrijke-windenergiegebieden-voor-maricultuur-en-passieve-visser), using the following variables:
- Distance to the nearest port, via maritime routes
- Environmental conditions (flow velocity, chlorophyll-a concentration, chlorophyll-a flux & Suspended Particulate Matter)

The suitability assemssment lead into scenarios for future upscaling of aquaculture in the Dutch North Sea. The scenarios, corresponding with the ones available in the interactive dashboard are divided into 4 scenarios for existing marine spatial planning of multi-use and shellfish cultivation [link to MSP for borssele](https://www.noordzeeloket.nl/@245375/handreiking-gebiedspaspoort-borssele/).
- Borssele windpark
- HKZ (Dutch Coast South) windpark
- HKN (Dutch Coast North) windpark
- All three Borssele, HKN and HKZ windparks combined (scenario name: short term, highly suitabile)

Then there are multiple scenarios for that are not yet defined in Marine Spatial Plans, and are ordered to two characteristics: 
    1) term in which it can be achieved, which is related to stage of windpark (operational, planned or researched).
    2) suitability, as assessed by the approach vdescribed in this section.

These additional scenarios are: 
- Medium term, High suitability     | KHN, HKZ, Borssele + HKW and IJmuiden-Ver 2021
- Medium term, Medium suitability   | the above + Nederwiek (North and South)
- Medium term, Low suitaitlity      | the above + Lagelander and Doordewind
- Long term, High suitability       | the above + HK-SW and HK-NW
- Long term, Medium suitability     | the above + Research areas 3,4 & 6/7



### Scenarios 

| <img src="https://gitlab.mercator-ocean.fr/pub/edito-infra/edito-tutorials-content/-/raw/wis3-deltares/articles/WIS3-Deltares/suitability_maps.png" width="75%"> |
|:--:| 
| A priori suitability maps of offshore wind parks for shellfish cultivation|

