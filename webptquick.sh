#!/bin/bash

initiatetabs() {
	domain=`awk -F/ '{print $3}' <<<$1`
	gnome-terminal --title="nikto" --command="bash -c \"nikto -h $1 ; exec bash\" " 
	gnome-terminal --title="sslscan" --command="bash -c \"sslscan $1; exec bash\" "
	gnome-terminal --title="dirb" --command="bash -c \"dirb $1; exec bash\" "
	gnome-terminal --title="dirsearch" --command="bash -c \"dirsearch -u $1;exec bash \" "
	gnome-terminal --title="nmap -A" --command="bash -c \"nmap -A $domain -p80,443; exec bash\" "
	gnome-terminal --title="nmap --script=vuln" --command="bash -c \"nmap --script=vuln $domain -p80,443; exec bash \" "
}

if (( $# == 0 )); then 
	echo "./webptquick.sh -u example.com"
	exit 1
fi
while getopts 'hu:' flag; do
	case "${flag}" in
		h) echo "./webptquick.sh -u example.com" ;;
		u) echo "initiating tabs" && initiatetabs ${OPTARG};;
		*) echo "try using -h for usage."
			exit 1
	esac
done


 
