#!/bin/bash 

v=0

zenity --info --title="Self Intro" --text="<u><span foreground='red' font='18'>Saurabh Kothawade(Tech Volunteer)</span></u> \n\n I am from Jalgaon and currently pursuing \n BCA From D.Y.Patil ACS College Pimpri Pune.\n I learned DSA, DevOps, ML/DL, Cloud, Languages,\n Bigdata and much more under the Mentorship of Mr.Vimal Daga Sir. \n\n <u><span foreground='green' font='16'>Thank You</span></u>" --width=400 --height=170

while [ $v -eq 0 ]
do

info=$(zenity --forms height=25 width=25 --text="Welcome to LinuxWorld" --add-entry="Student Name => " --add-entry="Email Id => "  --add-entry="Mobile No. => "  --add-entry="Address => ")

name=$(echo $info | awk -F '|' '{print $1}')
email=$(echo $info | awk -F '|' '{print $2}')
mobile=$(echo $info | awk -F '|' '{print $3}')
address=$(echo $info | awk -F '|' '{print $4}')

 
tech=$(zenity --list --checklist --title='Which Technology you know?' --column=Ans --column='Technologies Name' FALSE REHL FALSE DSA FALSE ML/DL FALSE DevOps FALSE Cloud FALSE BigData --width=300 --height=300)

tech1=$(echo $tech | awk -F '|' '{print $1}')
tech2=$(echo $tech | awk -F '|' '{print $2}')
tech3=$(echo $tech | awk -F '|' '{print $3}')
tech4=$(echo $tech | awk -F '|' '{print $4}')
tech5=$(echo $tech | awk -F '|' '{print $5}')
tech6=$(echo $tech | awk -F '|' '{print $6}')

zenity --info --title='Student Info' --height=400 --width=500 --text="<u><span foreground='blue' font='16'>Student Details :</span></u> \n\n <b>Student Name :</b> $name \n <b>EmailId :</b> $email \n <b>Mobile No :</b> $mobile \n <b>Address :</b> $address \n \n <u><span foreground='blue' font='16'>Technologies Name :</span></u>\n\n $tech1 \n $tech2 \n $tech3 \n $tech4 \n $tech5 \n $tech6 \n\n <b>LinkedIn Profile : </b> https://www.linkedin.com/in/saurabh-kothawade"

zenity --question --text="Do you want to fill form again?" --width=300
v=$?

done
