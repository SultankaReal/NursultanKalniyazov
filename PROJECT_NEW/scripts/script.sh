#!/bin/bash
#File is located in /
echo "Deleting the html page"
rm -rf www.chiark.greenend.org.uk/ 
echo "Updating the mirror."
wget -mkEpnp https://www.chiark.greenend.org.uk/~sgtatham/bugs-ru.html
echo "The mirror is updated."
