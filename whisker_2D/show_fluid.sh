#!/bin/bash
###------Mesh_info that could change------>>



CurPyFile="show_fluid.py"
SlidesNum=10,20,50,100,120,150,180,200,202,210




# >> begin to modify .py

#MeshFile=$(ls *.txt | tail -1)

# CaseName=${MeshFile%%.txt}

# sed -i '/Case_name=/cCase_name="'"$CaseName"'"' $CurPyFile
sed -i '/Slides=/cSlides=['"$SlidesNum"']'  $CurPyFile
# sed -i '/OutputFile=/cOutputFile="'"$OupFile"'"' $CurPyFile

# << end to modify .py

echo "*********** Begin to run the python file:" $CurPyFile "*************"
$visit210 -cli -nowin -s $CurPyFile
