# webptquick
This script take url as input and perform nikto, dirb, dirsearch, sslscan, nmap -A and nmap --script=vuln on web ports.
As every web pentester executes this comman commands for a given web application to pentest further or POCs, i have build this script to simply automate it with one go.
Just make sure that above mentioned tools are installed and working properly on your terminal.
Also everyone is welcome to clone, modify, reuse the script as per their own need.

Usage:
For first time you have enable execution permission
     chmod +x webptquick.sh

To run the script
     ./webptquick.sh -h (to see example)
     ./webptquick.sh -u https://example.com 




