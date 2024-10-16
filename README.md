# Matlab-Code-for-MLU
MATLAB code for computing mixed urban land use degree with geo-big data

We use the following equations to calculate the land use compatibility, poi compatible density and population mobility illustrated in Figure 1:

![image](https://github.com/user-attachments/assets/7e2a07e8-ba3a-4bcd-b9c1-613d256a9e59)

Note: Different colors in the 5*5 neighborhood in Figure 1(a) represent different land use types; different colored points in the neighborhood in Figure 1(b) represent different types of POIs; and Figure 1(c) represents the population flows interacting within and across the circular neighborhood of the core raster.

![image](https://github.com/user-attachments/assets/d85d5bb3-21a1-4c82-a5de-9029bf4a7035)

cmij represents the compatibility of the grid cell in the i-th row and j-th column with other cells within a 5x5 neighborhood, shown in Figure. 1(a). copij (g, h) is the compatibility coefficient between the land use type of the grid cell in the i-th row and j-th column and the land use type of the grid cell in the g-th row and h-th column within the 5x5 neighborhood. These coefficients are derived from existing literature based on expert judgment. dij (g, h) represents the distance between the two grid cells. We assume there is a linear decay and that the greater the distance, the less the compatibility.

![image](https://github.com/user-attachments/assets/cf073355-23e1-4b79-9ea6-77c5742ca115) 

cdij represents the POI compatible density of the grid cell in the i-th row and j-th column within a 5x5 neighborhood in Figure. 1(b). poic (m, n) denotes the compatibility coefficient between POI type m and type n, while q(m) and q(n) represent the number of POIs of type m and type n within the 5x5 neighborhood, respectively.

![image](https://github.com/user-attachments/assets/cf72806f-e72c-4062-8b8c-db42b5cc76f7)

Pfij represents the population mobility of the grid cell in i-th row and j-th column. popij (r<=2) denotes the population mobility within a 2000-meter neighborhood centered on the grid cell in the i-th row and j-th column. Conversely, popij (r>2) refers to the population mobility crossing the neighborhood.

The MATLAB code for computing the above equations in the attachments folders, respectively. 

Note: the third code run will last about 4 minutes.

