#!/bin/bash
# gh-init.sh, version 1
#

# The first step is creating the repository at GitHub. Once created at GitHub, run the script, 
# giving it the name of the repository
#
# ./gh-init.sh REPO_NAME TYPE_OF_LICENSE
#

echo "*******************************************************************************"
echo "Initializing Repository" $1
echo "*******************************************************************************"
mkdir $1
cd $1
git init
sleep 2
echo -e "\n"

echo "*******************************************************************************"
echo "Installing a README.md"
echo "*******************************************************************************"
wget https://gist.github.com/raw/4612244/16b2a8492d2ab94862cac303fdcdab53a609c1ab/README.md --output-document=README.md
sleep 2

echo "*******************************************************************************"
echo "Installing a CONTRIBUTING.md"
echo "*******************************************************************************"
wget https://gist.github.com/raw/4616922/2fc1a180c6a10ee203abe7714c1a09b26a953fad/CONTRIBUTING.md --output-document=CONTRIBUTING.md
sleep 2

echo "*******************************************************************************"
echo "Installing AUTHORS"
echo "*******************************************************************************"
wget https://gist.github.com/raw/4616908/1cd6df18512695032846412e48d9a8a2268343b9/AUTHORS --output-document=AUTHORS
sleep 2

echo "*******************************************************************************"
echo "Installing .gitignore"
echo "*******************************************************************************"
wget https://gist.github.com/raw/4616933/496ee2ca6a2f08396a4076fe43dedf3dc0da8b6d/GITIGNORE --output-document=.gitignore
sleep 2

if [ "$2" = "Mozilla" ]
then
	echo "*******************************************************************************"
   	echo "Installing the Mozilla LICENSE"
   	echo "*******************************************************************************"
   	wget https://gist.github.com/raw/4612300/f0ea057c58af2d4800adcdda77c674ae126a3d15/MozillaLicense --output-document=LICENSE
   	sleep 2
elif [ "$2" = "Apache" ]
then
	echo "*******************************************************************************"
   	echo "Installing the Apache LICENSE"
	echo "*******************************************************************************"
	wget https://gist.github.com/raw/4613533/1b22bef9c78ad96ebe90dcd3e565c097acdd2cce/ApacheLicense --output-document=LICENSE
	sleep 2
else
   exit $?
fi

echo "*******************************************************************************"
echo "Finalizing Repository Setup"
echo "*******************************************************************************"
git add *
git add .gitignore
git commit -m "First Commit"
git remote add origin git@github.com:fusion94/$1.git
sleep 2
echo -e "\n"

echo "*******************************************************************************"
echo "Repository Setup Complete -- Don't forget to PUSH to GitHub"
echo "git push -u origin master"
echo "*******************************************************************************"
