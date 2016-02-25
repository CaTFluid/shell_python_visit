#!/bin/bash
###------Mesh_info that could change------>>



CurPyFile="all_fluid3D.py"
SlidesNum=10,20,30,40,50,60,70,80,84,86,88
# if you want to plot all the dumps, change below line to: Is_get_all=1
Is_get_all=0  #If this is >0, then SlideNum will be ignored



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
