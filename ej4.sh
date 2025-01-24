#!bin/bash
echo "pon una palabra"
read palabra
if [["$palabra"=="bash"]]; then
echo "estas aprendiendo bash"
else
echo "no es bash, sigue probando"
fi
