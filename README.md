![SinkholeNet](https://github.com/sinkholenet/sinkholenet/blob/main/diagram_4.png)

### SinkholeNet: A Novel Sinkhole Dataset and Deep Learning Framework for Sinkhole Classification and Localization in High-resolution RGB-D Images

 In this dataset, the high-resolution aerial image is collected from the region of Karapinar, located in Konya, Turkey. This sinkhole dataset, consisting of RGB orthomosaic image and ground slope map. To generate this datase, a DJI Phantom 4 Pro-V2.0 quadcopter UAV with an optical camera is used to acquire images of the ground. The image acquisition is carried out under clear sky conditions. Since optical cameras only acquire three wavelengths (red, green, and blue), the ground elevation information does not exist so that it is vital to estimate it via a 3D modeling strategy using RGB images. Therefore, a 3-step strategy is used to obtain both ground slope map and orthomosaic image. The aim of the first step is to generate georeferenced images. To achieve this, there are two possible approaches: 1) direct methods which use the geolocation data of the images or 2) indirect methods which use ground control points. Here, the second approach is used to generate georeferenced images. In this manner, geodetic studies are carried out before image acquisition to transfer the images obtained from the UAV into georeferenced images using Universal Transverse Mercator (UTM) WGS84 zone 36 projection. More specifically, we select ten different homogeneously distributed ground control points over the study area and these points are localized with the Global Navigation Satellite Systems (GNSS) technique. In the second step, the flight plan for automatic data acquisition is programmed with the DJI GroundStation Pro application. Here, a 800 x 750 meter grid is established covering the entire study area. In addition, the autonomous flight altitude is 90m above ground level with a camera angle of 90-degree. To create more detailed map, the front and side overlap rate is defined as 80. As a result, 467 high-resolution images are obtained. In the final step, visual Structure from Motion system (VisualSfM) algorithm is used to align 467 spatially overlapped images to generate orthomosaic image and DEM of the study region. To generate slope map, the changes in the DEM is measured and considered as ground slope. The constructed orthomosaic RGB image is with pixel and spatial resolutions of 14,770 x 15,979 and 5 cm/pixel, respectively.

## Dataset Summery
A new sinkhole dataset, consisting of RGB image samples with ground slope maps, is created and will be publicly available to the research community to further advance sinkhole classification and localization algorithms. To the best of our knowledge, this dataset is the first one to provide images in RGB color space and ground slope map. 

[RGB Orthomosaic Image](https://www.kaggle.com/datasets/ayavariabdi/sinkholenet?select=RGB.png)

[Ground Slope Map](https://www.kaggle.com/datasets/ayavariabdi/sinkholenet?select=slope_2.tif)

## Model
Model will be shared shortly. 

## Read Image Dataset in Matlab
[MATLAB Code for Visualization](https://github.com/sinkholenet/sinkholenet/blob/main/read_data.m)

## If you use this dataset, please cite:

#### Reference:
* Amir Yavariabdi, Huseyin Kusetogullari, Osman Orhan, Esra Uray, Vahdettin Demir, and Turgay Celik, SinkholeNet: A Novel Sinkhole Dataset and Deep Learning Framework for Sinkhole Classification and Localization in High-resolution RGB-D Images, May 2022. Accessed on: May 05, 2022. Available: [https://github.com/sinkholenet/sinkholenet/](https://github.com/sinkholenet/sinkholenet/). 

#### BibTeX:

* @misc{YavariabdiSinkholeNetDataset,  
       author = {Amir Yavariabdi and Huseyin Kusetogullari and Osman Orhan and Esra Uray and Vahdettin Demir and Turgay Celik},    
       title = {SinkholeNet: A Novel Sinkhole Dataset and Deep Learning Framework for Sinkhole Classification and Localization in High-resolution RGB-D Images},    
       howpublished = {\url{https://github.com/sinkholenet/sinkholenet/}},  
       note = {Accessed: 2022-05-04}  
