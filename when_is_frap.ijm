id0=getImageID();
run("Reslice [/]...", "output=1.000 start=Top avoid");
id1=getImageID();
run("Z Project...", "projection=[Max Intensity]");
id2=getImageID();
run("Reslice [/]...", "output=0.003 start=Left avoid");
id3=getImageID();
run("Z Project...", "projection=[Max Intensity]");
id4=getImageID();
run("Select All");
run("Plot Profile");


//selectImage(id0);
//close();
selectImage(id1);
close();
selectImage(id2);
close();
selectImage(id3);
close();
selectImage(id4);
close();
