<img src="https://gitlab.mercator-ocean.fr/pub/edito-infra/edito-tutorials-content/-/raw/fa1-deltares/articles/FA1-Deltares/Deltares_logo_D-blauw_RGB.png" width="25%">

# What-if Scenario (WiS) on the impact of Nature-based Solutions on coastal flood risk: a relocatable approach, based on SFINCS. 

## EDITO-Model Lab's Focus Applications (FAs) and What-if Scenarios (WiSs)
The European Digital Twin of the Ocean (EDITO) will provide an innovative set of user-driven and interactive decision-making tools. Within that framework, EDITO-Model Lab’s Focus Applications are demonstrators of the capabilities of the next generation of ocean models that the project is building. We will deliver our Focus Applications with high technology readiness level within three thematic areas that are related to key EU policy questions: marine biodiversity, greenhouse gas emissions from maritime shipping, and marine pollution. The FAs and WiSs are interactive virtual demonstrators hosted on the EDITO platform that incorporate powerful technical components (such as data, software, and computational infrastructure) into a user-friendly environment. You can read what you can do with EDITO-MODEL LAB *WHAT-IF* scenarios [here](https://edito-modellab.eu/news/what-can-you-do-with-the-edito-model-lab-what-if-scenarios).

## Context of this What-if Scenario
Globally, millions of people are exposed to the adverse of effects of coastal flooding events and this number is expected to further increase due to demographic developments and climate change. The capacity of coastal wetlands to reduce coastal storm impacts has gained strong interest in the past decade, as it is potentially a cost-effective and sustainable alternative or complementary measures to more traditional coastal defenses.

Salt marshes are salt tolerant plants that can be found in intertidal zones, at the boundaries between land and sea. These plants interact with coastal hydrodynamic forces, such as storm surges, and can ultimately lower flood depths by slowing down storm surges. This mitigating mechanism is typically relevant for extensive tidal marsh areas, as reduction rates range between 5-25 cm per kilometer marsh width.

The interaction between coastal wetland vegetation and storm surges can be quantified using hydrodynamic numerical models. In this example, we introduce the capabilities of [SFINCS](https://www.deltares.nl/en/software-and-data/products/sfincs) to assess storm surge reduction by tidal marshes.

## General model setup
We make use of the [HydroMT-SFINCS](https://deltares.github.io/hydromt_sfincs/latest/) python package to easily set-up SFINCS models. The interactive Jupyter notebook covers the definition of the model domain and providing topographic information to the model. Secondly, we show how to set-up the storm surge forcing by adding a time varying water level to the model. Thirdly, we set the location of tidal marshes and the corresponding roughness coefficient. Finally, we run the model and provide some guidance on postprocessing of model results.

## Underlying simulations for this What-if Scenario
In the example, we cover a coastal storm in the current climate with water levels with a return period of 100 years. Additionally, we have set-up simulations for the future climate. Tidal marshes typically act as sediment sink which can lead to an increase of the wetland platform. Ultimately, the tidal marsh could fully adapt to SLR. However, for example in the case of a sediment deficit, vertical growth of the platform maybe insufficient leading partial drowning of the marsh. We model two plausible scenarios; 1) an optimistic scenario in which the marsh platform grows for 80% with SLR and 2) a pessimistic scenario in which the platform only grows for 20% with SLR. 

## Scenario simulation results

The storm surge is slowed down in the tidal marsh areas resulting in a reduction of the peak flood depth. Once the storm surge falls, the retreating storm waters are also slowed by the marshes resulting in locally heightened flood depths. In the future climate, substantially lower water levels are observed for the optimistic marsh cover scenario compared to the pessimistic scenario. This highlights the importance preserving natural flows of sediment and water to enhance sediment deposition and ultimately growth of the tidal marsh platform with SLR.

![](https://gitlab.mercator-ocean.fr/pub/edito-infra/edito-tutorials-content/-/raw/fdols-main-patch-88230/articles/NBS_for_coastal_flooding/output_movie.mp4)

| <img src="https://gitlab.mercator-ocean.fr/pub/edito-infra/edito-tutorials-content/-/raw/fdols-main-patch-88230/articles/NBS_for_coastal_flooding/obs_dif_all.png" width="75%"> |
|:--:| 
| Flood height over time, for multiple scenarios: with/without vegetation and the vegetation scenario with optimistic sealevel rise (SLR based on RCP2.6) or pessimistic sealevel rise (SLR based on RCP8.5) Averaged over all observation stations in an example simulation for Wash in the UKL |

## Scientific background of this What-if Scenario
SFINCS uses a staggered equidistant grid (Leijnse et al., to be puyblished). In this example, we use a grid resolution of 50 meters. Topographic data is derived from EMODNET bathymetry and [Delta DTM](https://data.4tu.nl/datasets/1da2e70f-6c4d-4b03-86bd-b53e789cc629) (Pronk et al., 2024). Levees are present in the case study site, but are not represented in the model due to the selected grid resolution and the use of global datasets. Time varying storm surge information with a return period of 100 years is obtained from Dullaart et al. 2024. The tidal marsh extent is obtained from the global dataset by Worthington et al., 2024 and the corresponding Manning roughness coefficient is set to 0.08 in line with Rezaie et al., 2020.

The application of SFINCS for impact assessment of Nature-based Solutions for coastal flood risk mitigation is part of the promotional work of Vincent van Zelst, a collaboration between Deltares and the Technical University of Delft.


