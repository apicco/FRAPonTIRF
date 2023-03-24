# FRAPonTIRF
Process TIRF images for the analysis of FRAP experiments. This plugins are meant to be used under Fiji/ImageJ.

# Installation
Download the .ijm files and save them in the Plugins folder of your Fiji/ImageJ installation. Restart Fiji/ImageJ.

# Use
The correction of FRAP experiment data needs tree ROI: 1) the external background, 2) the cytoplasmatic background, which acts as a measure of the photobleaching caused by the imaging and the local photobleaching (FRAP experiment), and 3) the ROI where the local photobleaching was performed. 

Identifying the cytoplasmatic background is challenging in TIRF data, which naturally minimise the cytoplasmatic contribution to the image acquisition. frap-32bit.ijm does exactly that, using median filtering to estimate the local cytoplasmatic contribution to your signal. This plugin will ask for two parameters: The radius for the background subtraction, which should be larger than the cells you image. The radis of the median filter, which should be larger than the fluorecent objects you photobleach in the FRAP experiment, but smaller than the cell size. 

when_is_frap.ijm is a tool that eases the identification of the frame when frap was performed to erase the burst of laser. 

Please, cite the this repository if you use the code.
