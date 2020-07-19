#!/bin/bash
# -*- coding: utf-8 -*-

echo -e "${G}A simple, yet handy script for Easy Reverse Ip Lookup :P ${G} "
echo "****************************************"
echo "
██████╗ ███████╗██╗   ██╗██╗██████╗ 
██╔══██╗██╔════╝██║   ██║██║██╔══██╗
██████╔╝█████╗  ██║   ██║██║██████╔╝
██╔══██╗██╔══╝  ╚██╗ ██╔╝██║██╔═══╝ 
██║  ██║███████╗ ╚████╔╝ ██║██║     
╚═╝  ╚═╝╚══════╝  ╚═══╝  ╚═╝╚═╝     
                                     Coded by Shuvamoy Roy(www.facebook.com/shuvamoy.roy.3)"
echo "****************************************"
echo -e "${G}A Really Fast ReverseIP Lookuper ^_^${G} "
echo -e "${G}Enter The Target domain ^_^ ${G}"

read domain

echo -e "${G}Doing ReverseIP Lookup ${G}"

echo " ====================================="

curl "http://reverseip.logontube.com/?url=$domain&output=json" >abc.txt


echo -e "${G} Arranging up all the domains${G}"
echo "++++++++++++++++++++++++++++++++++++++"
echo "**************************************"
echo "++++++++++++++++++++++++++++++++++++++"
sed -i 's/{"hostip"/HOSTIP/g' abc.txt ; sed -i 's/"hostname"/HOSTNAME/g' abc.txt ; sed -i 's/"response" : {"domain_count" :/Domains Found/g' abc.txt ;  sed -i 's/ "domains" :/LIST OF DOMAINS/g' abc.txt ; cat abc.txt | tr "," "\n" ; rm abc.txt



