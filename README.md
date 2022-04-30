### SinkholeNet: A Multi-Head Deep Learning Model for Sinkhole Classification and Localization

This paper introduces a novel multi-head deep learning framework, named SinkholeNet, to classify and localize sinkhole(s) in high-resolution aerial images collected  from the region of Karapinar, located in Konya, Turkey. Besides this, a new sinkhole dataset, consisting of RGB orthomosaic image and ground slope map, is generated to train and test the proposed framework. This dataset contains 2730 sinkhole samples and 2730 non-sinkhole samples with the size of 224 x 224. The SinkholeNet framework has three different steps to classify and localize sinkhole(s) in aerial images. First, a multi-head CNN architecture is used to fuse semantic features extracted from both RGB image patches and ground slope maps. Then, the fused features are fed into a modified shufflenet CNN architecture to classify patches as sinkhole or non-sinkhole. Finally, the last extracted feature map which belongs to the sinkhole class are fed into gradient-weighted class activation mapping (Grad-CAM) to localize sinkhole(s). Experiments on sinkhole dataset is conducted and the proposed framework show the effectiveness and robustness both in quantity and quality when compared with nine different CNN architectures. The proposed framework outperforms the compared CNN models and achieves the highest accuracy score with 97.15%.

## Dataset

A DJI Phantom 4 Pro-V2.0 quadcopter UAV with an optical camera is used to acquire images of the ground. The image acquisition is carried out under clear sky conditions. Since optical cameras only acquire three wavelengths (red, green, and blue), the ground elevation information does not exist so that it is vital to estimate it via a 3D modeling strategy using RGB images. Therefore, a 3-step strategy is used to obtain both ground slope map and orthomosaic image. The aim of the first step is to generate georeferenced images. To achieve this, there are two possible approaches: 1) direct methods which use the geolocation data of the images or 2) indirect methods which use ground control points. Here, the second approach is used to generate georeferenced images. In this manner, geodetic studies are carried out before image acquisition to transfer the images obtained from the UAV into georeferenced images using Universal Transverse Mercator (UTM) WGS84 zone 36 projection. More specifically, we select ten different homogeneously distributed ground control points over the study area and these points are localized with the Global Navigation Satellite Systems (GNSS) technique. In the second step, the flight plan for automatic data acquisition is programmed with the DJI GroundStation Pro application. Here, a 800 x 750 meter grid is established covering the entire study area. In addition, the autonomous flight altitude is 90m above ground level with a camera angle of $90$-degree. To create more detailed map, the front and side overlap rate is defined as 80. As a result, 467 high-resolution images are obtained. In the final step, visual Structure from Motion system (VisualSfM) algorithm is used to align 467 spatially overlapped images to generate orthomosaic image and DEM of the study region. To generate slope map, the changes in the DEM is measured and considered as ground slope. The constructed orthomosaic RGB image is with pixel and spatial resolutions of 14,770 x 15,979 and 5 cm/pixel, respectively.

## Dataset Generation
Visual assessment and localization of sinkholes in remote sensing images is a time-consuming and difficult process. In this paper, to tackle with this problem, a new deep learning-based framework is designed and developed. Generally, deep learning methods usually require a large volume of data to obtain an efficient and effective model. However, there is not any publicly available remote sensing image sinkhole dataset. Therefore, a new sinkhole dataset, consisting of RGB image samples with ground slope maps, is created and will be publicly available to the research community to further advance sinkhole classification and localization algorithms. To the best of our knowledge, this dataset is the first one to provide images in RGB color space and ground slope map. 

[RGB Orthomosaic Image](https://www.kaggle.com/datasets/ayavariabdi/didadataset)
[Ground Slope Map](https://www.kaggle.com/datasets/ayavariabdi/didadataset)

## Read Image Dataset in Matlab
Orthomosaic=imread('RGB.png');
Slope=imread('slope_2.tif');
Slope_data=zeros(size(Slope));
for i=1:15979
    for j=1:14770
        if Slope(i,j)<0
            Slope_data(i,j)=0;
        else
            Slope_data(i,j)=Slope(i,j);
        end
    end
end
imshow(uint8(Orthomosaic),[])
figure
clims = [0 15];
imagesc(Slope_data,clims)
colorbar
