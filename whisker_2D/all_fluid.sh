#!/bin/bash
###------Mesh_info that could change------>>



CurPyFile="all_fluid.py"
SlidesNum=10,20,50,100,120,150,180,200,202,210,220,240,250,260,270,280,282,284
# if you want to plot all the dumps, change below line to: Is_get_all=1
Is_get_all=1  #If this is >0, then SlideNum will be ignored



# >> begin to modify .py

#MeshFile=$(ls *.txt | tail -1)

# CaseName=${MeshFile%%.txt}

# sed -i '/Case_name=/cCase_name="'"$CaseName"'"' $CurPyFile
sed -i '/Slides=/cSlides=['"$SlidesNum"']'  $CurPyFile
sed -i '/Is_get_all=/cIs_get_all='"$Is_get_all"'' $CurPyFile
# sed -i '/OutputFile=/cOutputFile="'"$OupFile"'"' $CurPyFile

# << end to modify .py

echo "*********** Begin to run the python file:" $CurPyFile "*************"
$visit210 -cli -nowin -s $CurPyFile
