Dialog.create("Image correction, parameters:");
Dialog.addNumber("Rolling Ball Radius:",50);
Dialog.addNumber("Median filter Radius (spot radius):",7);
Dialog.show();
//	- rolling ball radius
r=Dialog.getNumber();
//	- radius for the median filtering
rm=Dialog.getNumber();
name=getTitle();
path=getDirectory("image");

if ( matches( name , ".*.stk" ) ) {
	output_name_raw=replace(name,".stk","_BG.tif");
} else {
	output_name_raw=replace(name,".tif","_BG.tif");
}


run("Set Scale...", "distance=0 known=0 pixel=1 unit=pixel");
run("32-bit");
run("Subtract Background...", "rolling="+r+" stack");
saveAs("Tiff",path+output_name_raw); 

run("Duplicate...", "title=filter duplicate");
run("Median...", "radius="+rm+" stack");

output_name_ratio=replace(name,".stk","_BGratio.tif");
imageCalculator("Divide create 32-bit stack", output_name_raw ,"filter");
saveAs("Tiff", path + output_name_ratio );

selectImage("filter");
close();
selectImage(output_name_raw);
close();
selectImage(output_name_ratio);
run("Enhance Contrast", "saturated=0.35");


