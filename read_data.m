Orthomosaic=imread('RGB.png');
Slope_Org=imread('slope_2.tif');
Slope_Data=zeros(size(Slope_Org));
for i=1:15979
    for j=1:14770
        if Slope_Org(i,j)<0
            Slope_Data(i,j)=0;
        else
            Slope_Data(i,j)=Slope_Org(i,j);
        end
    end
end
imshow(uint8(Orthomosaic),[])
figure
clims = [0 15];
imagesc(Slope_Data,clims)
colorbar
