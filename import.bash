#!/bin/bash
# Automating Import
echo "[SCRIPT] Confirm you are in app/" 
read dirBool

if [[ "$dirBool" == "Yes" ]]; then
	echo "You are in required directory"
else
	echo "You are not in required directory. Terminating script"
	exit 1
fi

echo "[SCRIPT] Deleting Entire Directory"
rm -rf * 

echo "[SCRIPT] Displaying directory tree"
ls

echo "[SCRIPT] Confirm directory was deleted" 
read delBool

if [[ "$delBool" == "Yes" ]]; then
	echo "Confirmed deleted directory"
else
	echo "Directory not deleted. Terminating script"
	exit 1
fi

"[SCRIPT] Cloning repo"
git clone https://github.com/XenoCraftMC/Eva-v5


echo "[SCRIPT] Displaying directory tree"
ls

echo "[SCRIPT] Confirm directory was cloned"
read cloneBool

if [[ "$cloneBool" == "Yes" ]]; then
	echo "Confirmed cloned directory"
else
	echo "Directory not cloned. Terminating script"
	exit 1
fi

"[SCRIPT] Moving cloned files one level up in the folder hiearchy"
mv Eva-v5/* .

echo "[SCRIPT] Displaying directory tree"
ls

echo "[SCRIPT] Confirm directory was files were moved"
read moveBool

if [[ "$moveBool" == "Yes" ]]; then
	echo "Confirmed moved files"
else
	echo "Directory not cloned. Terminating script"
	exit 1
fi

echo "[SCRIPT] Deleting (empty) cloned folder"
rm Eva-v5/ -rf

ls

echo "[SCRIPT] Refreshing project"
refresh
