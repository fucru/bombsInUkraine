#! /bin/bash

echo "# Кадры разрушительных бомбардировок мирных городов Украины российской армией\n\n" > README.md

IFS='/'

for folder in ./*/ 
do
    read -ra arr <<< $folder
    city=${arr[1]}

    echo "## $city" >> README.md 
    
    for path in ./$city/*.jpg
    do
        read -ra arr <<< $path
        image=${arr[2]}
        echo "![$image]($path)" >> README.md
        echo "$image"
    done
done 


