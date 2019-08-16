#!/bin/bash
#
# ==Managing reference links
#
# @description
# 
#  Whenever we refering some blogs or reference links
# We are not storing at that anywhere and its easy only
# but it will time consume task. for that i have created
# one bash script. using that you can manage the reference
# links by adding new links, listing and opening the file 
# by cmd itself.
#
# @setup
# 
# Steps to installation
# 1. Unzip the file
# 2. open the ref-link-manager folder and
#    open the terminal from the path
# 3. go to the folder by run `cd ref-link-manager` and 
#    run the command `chmod +x installer.sh`
# 4. now run ./installer.sh
# 5. close the terminal 
# 6. open the new terminal now test it `njreflinks -n "google" google.com`
#
# @author Nagaraj
# @contact nagaraj@agiratech.com

cd ~
mkdir ~/Documents/library/reference
echo '
# ==Managing reference links
# @author Nagaraj
# @contact nagaraj@agiratech.com
njreflinks(){

  if [ "${1}" == "-l" ]; then
     cat $HOME/Documents/library/reference/reference-links.txt | less
  elif [ "${1}" == "-o" ]; then
     gedit $HOME/Documents/library/reference/reference-links.txt   
  elif [ "${1}" == "-n" ]; then
    echo -e $2 " -> " $3 "\n" >> $HOME/Documents/library/reference/reference-links.txt
  elif [ "${1}" == "-h" ]; then
    echo -e "\nThis command is used to manage the reference links
you can create, list, open the file but you can not 
remove the reference links.\n
    
  -n  update the new reference 
  -o  open the reference links files 
  -h  list the links in the reference file \n

Examples:
1. njreflinks -n \"PWA work box \"  https://developers.google.com/web/tools/workbox/ 
2. njreflinks -l
"
  else 
    echo "Pass the parameters" 
  fi 

} ' >> ~/.bashrc
source ~/.bashrc
echo -e "installed successfully!
close this terminal and open new terminal and 
run njreflinks -l command for test
"

