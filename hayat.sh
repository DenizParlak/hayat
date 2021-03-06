#!/bin/bash


gr='\033[1;32m'
re='\033[1;31m'
xx='\033[0m'
yw='\033[1;33m'
bl='\033[0;34m'

show(){
printf "${!1}\n"
}

check(){
echo -en "${re}  - Check: ${xx}"
}


result(){
echo -en "${re}  - Result: ${xx}"
}

dash(){

echo "--------------------------------"

}

#project=$project_n

#echo "Enter the project name: "
#read -e project_n

score=0
num=2



echo -en '\n'

iam_scr(){

echo -en "${bl}  # Identity and Access Management${xx}"
echo -en '\n'
echo -en "--------------------------------"
echo -en '\n'
echo -en '\n'
}

log_scr(){

echo -en "${bl}  # Logging and Monitoring${xx}"
echo -en '\n'
echo -en "--------------------------------"
echo -en '\n'
echo -en '\n'

}

net_scr(){

echo -en "${bl}  # Networking${xx}"
echo -en '\n'
echo -en "--------------------------------"
echo -en '\n'
echo -en '\n'

}


vm_scr(){

echo -en "${bl}  # Virtual Machines${xx}"
echo -en '\n'
echo -en "--------------------------------"
echo -en '\n'
echo -en '\n'

}


sto_scr(){

echo -en "${bl}  # Storage${xx}"
echo -en '\n'
echo -en "--------------------------------"
echo -en '\n'
echo -en '\n'

}

sql_scr(){

echo -en "${bl}  # Cloud SQL Database Services${xx}"
echo -en '\n'
echo -en "--------------------------------"
echo -en '\n'
echo -en '\n'

}

k8s_scr(){

echo -en "${bl}  # Kubernetes Engine${xx}"
echo -en '\n'
echo -en "--------------------------------"
echo -en '\n'
echo -en '\n'

}


iam1="Ensure that corporate login credentials are used instead of Gmail accounts."

iam3="Ensure that there are only GCP-managed service account keys for each service account."
iam4="Ensure that ServiceAccount has no Admin privileges."
iam5="Ensure that IAM users are not assigned Service Account User role at project level."
iam6="Ensure user-managed/external keys for service accounts are rotated every 90 days or less."
iam7="Ensure that Separation of duties is enforced while assigning service account related roles to users."

log2="Ensure that sinks are configured for all Log entries."
log3="Ensure that object versioning is enabled on log-buckets."

netw1="Ensure the default network does not exist in a project."
netw2="Ensure legacy networks does not exists for a project."
netw3="Ensure that DNSSEC is enabled for Cloud DNS."
netw4="Ensure that RSASHA1 is not used for key-signing key in Cloud DNS DNSSEC."
netw5="Ensure that RSASHA1 is not used for zone-signing key in Cloud DNS DNSSEC."
netw6="Ensure that SSH access is restricted from the Internet."
netw7="Ensure that SSH access is restricted from the Internet."
netw8="Ensure Private Google Access is enabled for all in VPC Network."
netw9="Ensure VPC Flow logs is enabled for every subnet in VPC Network."

vm1="Ensure that instances are not configured to use the default service account with full access to all Cloud API."
vm2="Ensure Block Project-wide SSH keys enabled for VM instances."
vm3="Ensure oslogin is enabled for a project."
vm4="Ensure Enable connecting to serial ports is not enabled for VM Instance."
vm5="Ensure that IP forwarding is not enabled on Instances."
vm6="Ensure VM disks for critical VMs are encrypted with CustomerSupplied Encryption Keys (CSEK)"


stor1="Ensure that Cloud Storage bucket is not anonymously or publicly accessible."
stor3="Ensure that logging is enabled for Cloud storage buckets."


sql1="Ensure that Cloud SQL database instance requires all incoming connections to use SSL."
sql2="Ensure that Cloud SQL database Instances are not open to the world."
sql3="Ensure that MySQL database instance does not allow anyone to connect with administrative privileges."
sql4="Ensure that MySQL Database Instance does not allows root login from any host."

k8s1="Ensure Stackdriver Logging is set to Enabled on Kubernetes Engine Clusters."
k8s2="Ensure Stackdriver Monitoring is set to Enabled on Kubernetes Engine Clusters."
k8s3="Ensure Legacy Authorization is set to Disabled on Kubernetes Engine Clusters."
k8s4="Ensure Master authorized networks is set to Enabled on Kubernetes Engine Clusters."
k8s5="Ensure Kubernetes Clusters are configured with Labels."
k8s6="Ensure Kubernetes web UI / Dashboard is disabled."
k8s7="Ensure Automatic node repair is enabled for Kubernetes Clusters."
k8s8="Ensure Automatic node upgrades is enabled on Kubernetes Engine Clusters nodes."
k8s9="Ensure Container-Optimized OS (cos) is used for Kubernetes Engine Clusters Node image."
k8s10="Ensure Basic Authentication is disabled on Kubernetes Engine Clusters."
k8s11="Ensure Network policy is enabled on Kubernetes Engine Clusters."
k8s12="Ensure Kubernetes Cluster is created with Client Certificate enabled."
k8s13="Ensure Kubernetes Cluster is created with Alias IP ranges enabled."
k8s14="Ensure PodSecurityPolicy controller is enabled on the Kubernetes Engine Clusters."
k8s15="Ensure Kubernetes Cluster is created with Private cluster enabled."
k8s16="Ensure Private Google Access is set on Kubernetes Engine Cluster Subnets."
k8s17="Ensure default Service account is not used for Project access in Kubernetes Clusters"
k8s18="Ensure Kubernetes Clusters created with limited service account Access scopes for Project access."

echo -en " ██░ ██  ▄▄▄     ▓██   ██▓ ▄▄▄     ▄▄▄█████▓  '\n'"
echo -en "▓██░ ██▒▒████▄    ▒██  ██▒▒████▄   ▓  ██▒ ▓▒  '\n'"
echo -en "▒██▀▀██░▒██  ▀█▄   ▒██ ██░▒██  ▀█▄ ▒ ▓██░ ▒░  '\n'"
echo -en "░▓█ ░██ ░██▄▄▄▄██  ░ ▐██▓░░██▄▄▄▄██░ ▓██▓ ░   '\n'"
echo -en "░▓█▒░██▓ ▓█   ▓██▒ ░ ██▒▓░ ▓█   ▓██▒ ▒██▒ ░   '\n'"
echo -en " ▒ ░░▒░▒ ▒▒   ▓▒█░  ██▒▒▒  ▒▒   ▓▒█░ ▒ ░░     '\n'"
echo -en " ▒ ░▒░ ░  ▒   ▒▒ ░▓██ ░▒░   ▒   ▒▒ ░   ░      '\n'"
echo -en " ░  ░░ ░  ░   ▒   ▒ ▒ ░░    ░   ▒    ░        '\n'"
echo -en " ░  ░  ░      ░  ░░ ░           ░  ░          '\n'"
echo -en "                 ░ ░                          '\n'"

echo -en '\n'
echo -e "____________________________________________"
echo -en '\n'
echo -e "${bl}~ Google Cloud Platform - Auditing & Hardening Script ~${xx}"
echo -en '\n'
echo -e "${re}denizparlak@protonmail.ch${xx}"
echo -e "${re}twitter.com/_denizparlak${xx}"
echo -en '\n'
echo -e "Hayat starting at.." `date`
echo -e "____________________________________________"
echo -en '\n'


#!/bin/bash

sw=/usr/bin/sw_vers
ubuntu=$(lsb_release -a 2> /dev/null | grep Dist | awk -F ":" {'print $2'} | xargs)
rhel=/etc/redhat-release
gcloud=/usr/bin/gcloud

if [ -f $sw  ]
then
echo "Operating System: MacOS X"
elif [[ $ubuntu == "Ubuntu" ]]
then
echo "Operating System: Ubuntu"
elif [ -f $rhel ]
then
echo "Operating System: RHEL"
fi


if [ ! -f $gcloud ] && [ -z "command -v gcloud" ]
then
read -p 'gcloud does not found on the system, do you want to install it? y/n' getyn
echo -en '\n'
if [[ $getyn == "y" ]] && [[ $ubuntu == "Ubuntu" ]]
then
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
apt-get install apt-transport-https ca-certificates
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
sudo apt-get update -y && sudo apt-get install google-cloud-sdk -y
elif [[ $getyn == "y" ]] && [ -f $sw]
then
curl https://sdk.cloud.google.com | bash
exec -l $SHELL
elif [[ $getyn == "y" ]] && [ -f $rhel ]
then
sudo tee -a /etc/yum.repos.d/google-cloud-sdk.repo << EOM
[google-cloud-sdk]
name=Google Cloud SDK
baseurl=https://packages.cloud.google.com/yum/repos/cloud-sdk-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg
       https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOM
yum install google-cloud-sdk -y
else
echo 1
fi
fi


cp report_template.html res.html

iam_clus(){

clus_score=0
clus_num=16

read -p 'Project name: ' project
echo -en '\n'

iam_check_gmail(){


check_mail=$(gcloud projects get-iam-policy $project | grep gmail)

mailb=$(gcloud projects get-iam-policy $project  | grep gmail | awk -F ":" '{print $2}' | uniq)

if [[ $check_mail == *"gmail"* ]]
then
read ech1 < <(echo -en "Current mail: $mailb" "${re}                      [ Warning ]${xx}")
echo -en "Current mail: $mailb" "${re}                      [ Warning ]${xx}"
scoren=0
clus_score=0
else
echo -en "Current mail policy is fine." "${gr}                               [ OK ]${xx}"
scoren=$(( $score + num ))
clus_scoren=$(( clus_score + clus_num ))
fi

}

t1=$(echo $iam1)

iam_scr
check; show iam1
result; iam_check_gmail
echo -en '\n'
dash
echo -en '\n'
#gsed -i "s/a1/$t1/g" res.html

t2=$(echo $iam_check_gmail | awk -F "om" {'print $1'})

a2=$(echo $ech1 | tr -s ' ' | cut -d ' ' -f1,2,3)

#gsed -i "s/a2/$a2/g" res.html

#echo $iam_check_gmail
: '

if [[ $iam_check_mail == *"OK"* ]]
then
#gsed -i "s/a3/OK/g" res.html
#gsed -i "s/$t2//g" res.html | grep -A5 $t2
else
#gsed -i "s/a3/WARNING/g" res.html
#gsed -i "91s/ok/failure/g" res.html
fi
'

serv_acc_key(){

get_iam_acc=$(gcloud iam service-accounts list | awk '{print $6}' | grep @)
check_iam_acc=$(gcloud iam service-accounts keys list --iam-account=$get_iam_acc --managed-by=user 2>&1)

if [[ $check_iam_acc == *"items"* ]]
then
read ech2 < <(echo -en "Service Account has no any key." "${gr}                               [ OK ]${xx}")
echo -en "Service Account has no any key." "${gr}                               [ OK ]${xx}"
scoren2=$(( scoren + num ))
clus_scoren2=$(( clus_score + clus_num ))
else
echo -en "Service Account has a key." "${re}                         [ Warning ]${xx}"
scoren2=$(( scoren + 0 ))
clus_scoren2=$(( clus_score + 0 ))
fi

}

te2=$(echo $iam3)
t2=$(echo $ech2)

check; show iam3
result; serv_acc_key
echo -en '\n'
dash
echo -en '\n'

#gsed -i "s/c1/$te2/g" res.html

c2=$(echo $ech2 | tr -s ' ' | cut -d ' ' -f1,2,3,4,5,6)
: '
gsed -i "s/c2/$c2/g" res.html

if [[ $ech2 == *"OK"* ]]
then
gsed -i "s/c3/OK/g" res.html
gsed -i "103s/failure/ok/" res.html
else
gsed -i "s/c3/WARNING/g" res.html
gsed -i "103s/ok/failure/g" res.html
fi
'

iam_service_acc(){

editor_serv_accs=$(gcloud projects get-iam-policy $project | grep -A 2 service | sed '$d' | grep -B10 'editor' | grep -v members | awk '/role*/{f=1;next}/\*editor/{f=0} f')

echo $editor_serv_accs > ed.txt

if [ -s ed.txt  ]
then
echo -en "These Service Accounts has Editor role.""${re}                        [ Warning ]${xx}"
read ech3 < <(echo -en "These Service Accounts has Editor role." "${re}                       [ Warning ]${xx}")
scoren3=$(( scoren2 + 0 ))
clus_scoren3=$(( clus_scoren2 + 0 ))
else
echo -en "There is no any Service Accounts with Editor role." "${gr}   Ok${xx}"
scoren3=$(( scoren2 + num ))
clus_scoren3=$(( clus_scoren2 + clus_num ))
rm -f ed.txt
fi
}

t3=$(echo $iam4)

check; show iam4
result; iam_service_acc
echo -en '\n'
dash
echo -en '\n'

#gsed -i "s/d1/$t3/g" res.html

d2=$(echo $ech3 | tr -s ' ' | cut -d ' ' -f1,2,3,4,5,6)

#gsed -i "s/d2/$d2/g" res.html
: '
if [[ $ech3 == *"OK"* ]]
then
#gsed -i "s/d3/OK/g" res.html
#gsed -i "114/failure/ok/" res.html
else
#gsed -i "s/d3/WARNING/g" res.html
#gsed -i "114s/ok/failure/g" res.html
fi
'

iam_serv(){

get_iam_serv=$(gcloud projects get-iam-policy $project | grep roles | grep iam.serviceAcc)

if [[ $get_iam_serv == " " ]]
then
echo -en "IAM users are not assigned Service Account User."
scoren4=$((scoren3 + num))
clus_scoren4=$(( clus_scoren3 + clus_num ))
else
echo -en "IAM users are assigned Service Account User." "${re}                  [ Warning ]${xx}"
read ech4 < <(echo -en "IAM users are assigned Service Account User.")
scoren4=$((scoren3 + 0))
clus_scoren4=$(( clus_scoren3 + 0 ))
fi

}

t4=$(echo $iam5)
e2=$(echo $ech4)

check; show iam5
result; iam_serv
echo -en '\n'
dash
echo -en '\n'

90days(){

service_mail=$(gcloud iam service-accounts list | grep -E -o "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b")

get_date=$(gcloud iam service-accounts keys list --iam-account $service_mail --format=json | grep validAfterTime | awk -F ":" {'print $2'} | awk -F "T" {'print $1'}  |  sed 's/"//g' | xargs)


echo -en "Service account created date: $get_date" "${yw}                      [ INFO ]${xx}"

}

check; show iam6
result; 90days
echo -en '\n'
dash
echo -en '\n'


serviceadmin(){

checkadm=$(gcloud projects get-iam-policy $project | grep Admin)

if [ -z $checkadm ]
then
echo -en "Admin role does not assigned to any user." "${gr}                     [ OK ]${xx}"
scoren5=$((scoren4 + num))
clus_scoren5=$(( clus_scoren4 + clus_num ))
else
echo -en  "${re}   [ WARNING ]${xx}"
scoren5=$((scoren4 + 0))
clus_scoren5=$(( clus_scoren4 + 0 ))
fi


}


check; show iam7
result; serviceadmin
echo -en '\n'
dash
echo -en '\n'


if [ "$var" == "a" ]
then
echo "Identity and Access Management score is $clus_scoren5/100"
else
echo 1
fi


#gsed -i "s/e1/$t4/g" res.html

m2=$(echo $ech4 | tr -s ' ' | cut -d ' ' -f1,2,3,4,5,6,7)

#gsed -i "s/e2/$m2/g" res.html
: '
if [[ $ech4 == *"OK"* ]]
then
#gsed -i "s/e3/OK/g" res.html
#gsed -i "125s/failure/ok/" res.html
else
#gsed -i "s/e3/WARNING/g" res.html
#gsed -i "125s/ok/failure/" res.html
fi
'
}



: '
if [[ $1 == "iam_clus" ]]
then
iam_clus
exit 1
elif [[ $1 == "iam" ]]
exit 1
fi
'

log_clus(){

log_sink(){

check_sink=$(gcloud logging sinks list 2>&1)


echo $check_sink

if [[ $check_sink == *"0 items"* ]]
then
echo -en "    No any sinks are configured for Log entries." "${re}                          [ Warning ]${xx}"
scoren6=$((scoren5 + 0))
else
echo -en "    Sink is configured for Log entries." "${gr}   Ok${xx}"
scoren6=$((scoren5 + num))
fi

}

log_scr
check; show log2
result; log_sink
echo -en '\n'
dash
echo -en '\n'

sink_vers(){

get_sink=$(gcloud logging sinks list | grep -v DES | head -n 1 | sed 's/^.*\///' | awk '{print $1}')

check_vers=$(gsutil versioning get gs://$get_sink | awk '{print $2}')

if [[ $check_vers = "Suspended" ]]
then
echo -en "Object versioning is disabled." "${re}  [ Warning ]${xx}"
else
echo -en "Object versioning is enabled." "${gr}   [ OK ]${xx}"
fi


}
check; show log3
result; sink_vers
echo -en '\n'
dash
echo -en '\n'

}


net_clus(){

net_default(){

check_def=$(gcloud compute networks list | grep defa | awk {'print $1'})

if [[ $check_def == *"def"* ]]
then
echo -en "The project has "default" network." "${re}                              [ Warning ]${xx}"
scoren7=$((scoren6 + 0))
else
echo -en "There is no any "default" network for the project." "${gr}   Ok${xx}"
scoren7=$((scoren6 + num))
fi

}


net_scr
check; show netw1
result; net_default
echo -en '\n'
dash
echo -en '\n'


net_legacy(){

check_lega=$(gcloud compute networks list | grep lega | awk {'print $1'})

if [[ $check_lega == *"lega"* ]]
then
echo -en "The project has "legacy" network." "${re}   Warning${xx}"
scoren8=$((scoren7 + 0))
else
echo -en "There is no any "legacy" network for the project." "${gr}               [ OK ]${xx}"
scoren8=$((scoren7 + num))
fi

}

check; show netw2
result; net_legacy
echo -en '\n'
dash
echo -en '\n'

: '
net_dnssec(){

check_dnssec=$(gcloud beta dns managed-zones list | awk '{print $1}' | sed  '1d')

check2=$(gcloud beta dns managed-zones describe "$check_dnssec" | grep state | awk '{print $2}')

if [[ $check_dnssec == "Listed 0 items." ]]
then
echo -en "There is no any managed zone!" "${re}                                           [ Warning ]${xx}"
elif [[ $check2 == "on" ]]
then
echo -en "DNSSEC is enabled." "${gr}   Ok${xx}"
scoren9=$((scoren8 + num))
else
echo -en "DNSSEC is disabled." "${re}                                           [ Warning ]${xx}"
scoren9=$((scoren8 + 0))
fi

}

check; show netw3
result; net_dnssec
echo -en '\n'
dash
echo -en '\n'
'

: '
keysign_dnssec(){

check_sign=$(gcloud beta dns managed-zones describe test1 | grep -B2 keySign | grep algorithm | awk '{print $3}')

if [[ $check_sign == "rsasha1" ]]

then
echo -en "RSASHA1 is enabled for key-signing." "${re}   Warning${xx}"
scoren10=$((scoren9 + 0))
else
echo -en "RSASHA1 is disabled for key-signing." "${gr}                          [ OK ]${xx}"
scoren10=$((scoren9 + num))
fi
}



check; show netw4
result; keysign_dnssec
echo -en '\n'
dash
echo -en '\n'



zonesign_dnssec(){

check_zsign=$(gcloud beta dns managed-zones describe test1 | grep -B2 zoneSign | grep algorithm | awk '{print $3}')

if [[ $check_zsign == "rsasha1" ]]

then
echo -en "RSASHA1 is enabled for key-signing." "${re}   Warning${xx}"
scoren11=$((scoren10 + 0))
else
echo -en "RSASHA1 is disabled for key-signing." "${gr}                          [ OK ]${xx}"
scoren11=$((scoren10 + num))
fi
}

check; show netw5
result; zonesign_dnssec
echo -en '\n'
dash
echo -en '\n'
'

ssh_rest(){


check_generic=$(gcloud compute firewall-rules list --format=table'(name,direction,sourceRanges,allowed.ports)' | grep ssh | awk '{print $3}' |  grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | grep 0. | grep 0.0)

if [[ $check_generic == "0.0.0.0" ]]
then
echo -en "SSH traffic source 0.0.0.0" "${re}                                    [ Warning ]${xx}"
scoren12=$((scoren11 + 0))
else
echo -en "SSH traffic source is $check_generic" "${gr}                          [ OK ]${xx}"
scoren12=$((scoren11 + num))
fi


}

check; show netw6
result; ssh_rest
echo -en '\n'
dash
echo -en '\n'



rdp_rest(){


check_generic2=$(gcloud compute firewall-rules list --format=table'(name,direction,sourceRanges,allowed.ports)' | grep rdp | awk '{print $3}' |  grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b")

if [[ $check_generic2 == "0.0.0.0" ]]
then
echo -en "RDP traffic source 0.0.0.0" "${re}                                    [ Warning ]${xx}"
scoren13=$((scoren12 + 0))
else
echo -en "RDP traffic source is $check_generic2" "${gr}   Ok${xx}"
scoren13=$((scoren12 + num))
fi

}

check; show netw7
result; rdp_rest
echo -en '\n'
dash
echo -en '\n'

priv_goac(){


check_goac=$(gcloud compute networks subnets describe default --region us-central1 | grep privateIp | awk '{print $2}')

if [[ $check_goac == "false" ]]
then
echo -en "Private Google Access is disabled." "${re}                            [ Warning ]${xx}"
scoren14=$((scoren13 + 0))
else
echo -en "Private Google Access is enabled."  "${gr}   Ok${xx}"
scoren14=$((scoren13 + num))
fi
}

check; show netw8
result; priv_goac
echo -en '\n'
dash
echo -en '\n'

vflow(){

check_flow=$(gcloud compute networks subnets describe default --region us-central1 --format=json | grep enableFlow | awk '{print $2}')

if [[ $check_flow == *"true"* ]]
then
echo -en "VPC Flow logs are enabled." "${gr}                                    [ OK ]${xx}"
scoren15=$((scoren14 + num))
else
echo -en "VPC Flow logs are disabled." "${re}                                   [ Warning ]${xx}"
scoren15=$((scoren14 + 0))
fi

}

check; show netw9
result; vflow
echo -en '\n'
dash
echo -en '\n'

}

: '
if [[ $1 == "iam_clus" ]]
then
iam_clus
exit 1
elif [[ $1 == "net_clus" ]]
then
net_clus
exit 1
else
exit 1
fi
'



vm_clus(){

#vm_check(){

read -p 'This section will check your virtual machine settings, do you want to check or pass? c/p' getcp
echo -en '\n'
if [[ $getcp == "p" ]]
then
return
else
echo 1
fi

read  -p 'Instance name: ' instance
echo -en '\n'


cloudapi(){

get_current_zone=$(gcloud compute instances list --filter="name=('instance-1')" --format "value(zone)")

check_fullacc=$(gcloud compute instances describe $instance | grep -A20 scopes | grep https://www.googleapis.com | grep -v zone)

if [[ $check_fullacc == *"cloud-platform"* ]]
then
echo -en "Instance have full access to Cloud API." "${re}   Warning${xx}"
scoren16=$((scoren15 + 0))
else
echo -en "Instance does not have full access to Cloud API." "${gr}                          [ OK ]${xx}"
scoren16=$((scoren15 + num))
fi
}

vm_scr
check; show vm1
result; cloudapi
echo -en '\n'
dash
echo -en '\n'

block_key(){


check_block_key=$(gcloud compute instances describe $instance | grep project-ssh-keys)

if [[ $check_block_key == *"true"* ]]
then
echo -en "Block Project-wide SSH Keys enabled." "${gr}   Ok${xx}"
scoren17=$((scoren16 + num))
else
echo -en "Block Project-wide SSH keys disabled." "${re}                                     [ Warning ]${xx}"
scoren17=$((scoren16 + 0))
fi
}

check; show vm2
result; block_key
echo -en '\n'
dash
echo -en '\n'



ologin(){

check_ologin=$(gcloud compute project-info describe | grep enable-oslogin | awk '{print $2}')

if [[ $check_ologin == *"true"* ]]
then
echo -en "oslogin is enabled." "${gr}   Ok${xx}"
scoren18=$((scoren17 + num))
else
echo -en "oslogin is disabled." "${re}                                          [ Warning ]${xx}"
scoren18=$((scoren17 + 0))
fi
}

check; show vm3
result; ologin
echo -en '\n'
dash
echo -en '\n'



serial_port(){

check_null=$(gcloud compute instances describe $instance --format="json(metadata.items[].key,metadata.items[].value)")

if [[ $check_null == "null" ]]
then
echo -en "Serial ports are disabled." "${gr}                                                [ OK ]${xx}"
scoren19=$((scoren18 + num))
else
echo -en "Serial ports are enabled."  "${re}   Warning${xx}"
scoren19=$((scoren18 + 0))
fi
}

check; show vm4
result; serial_port
echo -en '\n'
dash
echo -en '\n'


ip_fw(){

check_ipfw=$(gcloud compute instances list --format='table(name,canIpForward)' | awk '{print $2}' | tail -n 1)

if [[ $check_ipfw == "False" ]]
then
echo -en "IP Forwarding disabled." "${gr}                                       [ OK ]${xx}"
scoren20=$((scoren19 + num))
else
echo -en "IP Forwarding enabled." "${re}                                          [ Warning ]${xx}"
scoren20=$((scoren19 + 0))
fi

}

check; show vm5
result; ip_fw
echo -en '\n'
dash
echo -en '\n'


csek_disk(){

disk1=$(gcloud beta compute disks list | awk -F " " {'print $1'} | grep -v NAME | head -n 1)
disk2=$(gcloud beta compute disks list | awk -F " " {'print $1'} | grep -v NAME | tail -n 1)

disk_zone=$(gcloud beta compute disks list | awk -F " " {'print $2'} | grep -v LOC | head -n 1)

checkc=$(gcloud beta compute disks describe $disk1 --zone $disk_zone --format="json(diskEncryptionKey,name)")

if [[ ! -z $checkc ]]
then
echo -en "$disk1 using CSEK" "${gr}        [ OK ]${xx}"
scoren21=$((scoren20 + num))
else
echo -en "${re}                                          [ Warning ]${xx}"
scoren21=$((scoren20 + 0))
fi


}

check; show vm6
result; csek_disk
echo -en '\n'
dash
echo -en '\n'



}

stor_clus(){

read -p 'This section will check your bucket settings, do you want to check or pass? c/p' getcpb
echo -en '\n'
if [[ $getcpb == "p" ]]
then
return
else
echo 1
fi


read  -p 'Bucket name: ' bucket
echo -en '\n'

bucket_auth(){

check_bucket=$(gsutil ls)

check_bucket_iam=$(gsutil iam get "$check_bucket")

if [[ $check_bucket_iam == *"allAuthenticated"* ]]
then
echo -en "Bucket is publicly accessible." "${re}                                          [ Warning ]${xx}"
scoren22=$((scoren21 + 0))
else
echo -en "Bucket is not anonymously." "${gr}                                    [ OK ]${xx}"
scoren22=$((scoren21 + num))
fi

}

sto_scr
check; show stor1
result; bucket_auth
echo -en '\n'
dash
echo -en '\n'


bucket_log(){

check_blog=$(gsutil logging get $bucket)

if [[ $check_blog == *"no logging"* ]]
then
echo -en "Bucket logging is disabled." "${re}                                   [ Warning ]${xx}"
scoren23=$((scoren22 + 0))
else
echo -en "Bucket logging is enabled." "${gr}                                         [ OK ]${xx}"
scoren23=$((scoren22 + num))
fi

}

check; show stor3
result; bucket_log
echo -en '\n'
dash
echo -en '\n'

}

sql_clus(){

get_sql_name=$(gcloud sql instances list &> gets)


getsv=$(cat gets)
#echo $getsv

if [[ $getsv == "Listed 0 items." ]]
then
echo "There is no any SQL instance running here."
return
else
:
fi


: 'read  -p 'SQL instance name: ' sqla
echo -en '\n''


sql_ssl(){

get_sql_name=$(gcloud sql instances list &> gets)

sql_name=$(gcloud sql instances list | awk '{print $1}'  | grep -v N)

#getsv=$(cat gets)
#echo $getsv

if [[ $getsv == "Listed 0 items." ]]
then
echo "There is no any SQL instance running here."
return
else
:
fi


check_sql_ssl=$(gcloud sql instances describe $sql_name | grep requireSsl)

if [[ $check_sql_ssl == *"true"* ]]
then
echo -en "SSL is enabled for SQL instance." "${gr}                                   [ OK ]${xx}"
scoren24=$((scoren23 + num))
else
echo -en "SSL is disabled for SQL instance." "${re}                             [ Warning ]${xx}"
scoren24=$((scoren23 + 0))
fi

}


sql_scr
check; show sql1
result; sql_ssl
echo -en '\n'
dash
echo -en '\n'


sql_ip(){

check_sql_ip=$(gcloud sql instances describe $sql_name | grep -A5 authorizedNet | grep 0.0.0.0 | grep value | awk '{print $2}')

if [[ $check_sql_ip == *"0.0.0.0"* ]]
then
echo -en "SQL network is open to the world." "${re}                             [ Warning ]${xx}"
scoren25=$((scoren24 + 0))
else
echo -en "SQL network is seems fine." "${gr}                                    [ OK ]${xx}"
scoren25=$((scoren24 + num))
fi

}

check; show sql2
result; sql_ip
echo -en '\n'
dash
echo -en '\n'


mysql_root(){

get_sql_ip=$(gcloud sql instances list --filter='DATABASE_VERSION:MYSQL*'  | awk '{print $5}' |  grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b")

check_ip=$(mysql -u root -h $get_sql_ip 2>&1)


if [[ $check_ip == *"denied"* ]]
then
echo -en "MySQL root password is disabled." "${gr}                              [ OK ]${xx}"
scoren26=$((scoren25 + num))
else
echo -en "MySQL root password is enabled." "${re}                               [ Warning ]${xx}"
scoren26=$((scoren25 + 0))
fi

}

check; show sql3
result; mysql_root
echo -en '\n'
dash
echo -en '\n'


mysql_any_host(){

get_sql_name=$(gcloud sql instances list --filter='DATABASE_VERSION:MYSQL*' | awk '{print $1}' | grep -v NAME)

check_sql_root=$(gcloud sql users list --instance $get_sql_name | grep root | awk '{print $2}')

if [[ $check_sql_root == "%" ]]
then
echo -en "MySQL instance allows root login from any host." "${re}               [ Warning ]${xx}"
scoren27=$((scoren26 + 0))
else
echo -en "MySQL intance does not allows root login from any host." "${gr}                [ OK ]${xx}"
scoren27=$((scoren26 + num))
fi

}

check; show sql4
result; mysql_any_host
echo -en '\n'
dash
echo -en '\n'

}

k8s_clus(){

get_ks_name=$(gcloud container clusters list |  awk '{print $1}' | grep -v NAME)
get_ks_zone=$(gcloud container clusters list | awk '{print $2}' | grep -v LOCA)

if [ -z "$get_ks_name" ]
then
echo -en "There is no any Kubernetes cluster running!"
return
else
:
fi

ks_stackd(){

get_ks_name=$(gcloud container clusters list |  awk '{print $1}' | grep -v NAME)
get_ks_zone=$(gcloud container clusters list | awk '{print $2}' | grep -v LOCA)
check_ks_log=$(gcloud container clusters describe $get_ks_name --zone $get_ks_zone | grep loggingSer | awk '{print $2}')

if [[ $check_ks_log == *"logging.googleapis"* ]]
then
echo -en "Stackdriver is enabled for Kubernetes." "${gr}                        [ OK ]${xx}"
scoren28=$((scoren27 + num))
else
echo -en "Stackdriver is disabled for Kubernetes." "${re}                       [ Warning ]${xx}"
scoren28=$((scoren27 + 0))
fi

}


k8s_scr
check; show k8s1
result; ks_stackd
echo -en '\n'
dash
echo -en '\n'


ks_stackm(){

get_ks_name=$(gcloud container clusters list |  awk '{print $1}' | grep -v NAME)
get_ks_zone=$(gcloud container clusters list | awk '{print $2}' | grep -v LOCA)
check_ks_mon=$(gcloud container clusters describe $get_ks_name --zone $get_ks_zone | grep monitoringSer | awk '{print $2}')

if [[ $check_ks_mon == *"monitoring.googleapis"* ]]
then
echo -en "Stackdriver monitoring is enabled for Kubernetes." "${gr}             [ OK ]${xx}"
scoren29=$((scoren28 + num))
else
echo -en "Stackdriver monitoring is disabled for Kubernetes." "${re}      [ Warning ]${xx}"
scoren29=$((scoren28 + 0))
fi

}

check; show k8s2
result; ks_stackm
echo -en '\n'
dash
echo -en '\n'

ks_legacy(){

get_ks_name=$(gcloud container clusters list |  awk '{print $1}' | grep -v NAME)
get_ks_zone=$(gcloud container clusters list | awk '{print $2}' | grep -v LOCA)
check_ks_legacy=$(gcloud container clusters describe $get_ks_name --zone $get_ks_zone | grep legacyAcab | awk '{print $2}')

if [[ $check_ks_log == *"{}"* ]]
then
echo -en "Legacy Authorization is enabled for Kubernetes." "${gr}             [ OK ]${xx}"
scoren30=$((scoren29 + num))
else
echo -en "Legacy Authorization is disabled for Kubernetes." "${re}              [ Warning ]${xx}"
scoren30=$((scoren29 + 0))
fi

}

check; show k8s3
result; ks_legacy
echo -en '\n'
dash
echo -en '\n'

ks_mauth_net(){

get_ks_name=$(gcloud container clusters list |  awk '{print $1}' | grep -v NAME)
get_ks_zone=$(gcloud container clusters list | awk '{print $2}' | grep -v LOCA)
ks_check_mauth=$(gcloud container clusters describe $get_ks_name --zone $get_ks_zone | grep edNetworksConfig | awk '{print $2}')

if [[ $ks_check_mauth == *"{}"* ]]
then
echo -en "Master authorized networks is disabled." "${re}                       [ Warning ]${xx}"
scoren31=$((scoren30 + 0))
else
echo -en "Master authorized networks is enabled." "${gr}                    [ OK ]${xx}"
scoren31=$((scoren30 + num))
fi

}

check; show k8s4
result; ks_mauth_net
echo -en '\n'
dash
echo -en '\n'


k8s_label(){

ks_check_label=$(gcloud container clusters describe $get_ks_name --zone us-central1-a | grep Label)

if [[ ks_check_label == "" ]]
then
echo -en "Kubernetes Clusters are not configured with Labels." "${re}                       [ Warning ]${xx}"
scoren32=$((scoren31 + 0))
else
echo -en "Kubernetes Clusters are configure with Labels." "${gr}                [ OK ]${xx}"
scoren32=$((scoren31 + num))
fi

}


check; show k8s5
result; k8s_label
echo -en '\n'
dash
echo -en '\n'

k8s_dashb(){

ks_check_dashb=$(gcloud container clusters describe $get_ks_name --zone us-central1-a | grep Dashb)

if [[ ks_check_dashb == "" ]]
then
echo -en "Kubernetes using Dashboard." "${re}                       [ Warning ]${xx}"
scoren33=$((scoren32 + 0))
else
echo -en "Kubernetes not using Dashboard." "${gr}                               [ OK ]${xx}"
scoren33=$((scoren32 + num))
fi

}


check; show k8s6
result; k8s_dashb
echo -en '\n'
dash
echo -en '\n'



k8s_autorep(){

get_pool=$(gcloud container node-pools list --zone us-central1-a --cluster $get_ks_name | head -n 2 | grep -v N | awk -F " " {'print $1'})


check_auto_rep=$(gcloud container node-pools describe $get_pool --cluster $get_ks_name --zone us-central1-a | grep autoRepa | awk '{print $2}')

if [[ $check_auto_rep == *"true"* ]]
then
echo -en "Automatic node repair is enabled for Kubernetes Clusters." "${gr}     [ OK ]${xx}"
scoren34=$((scoren33 + num))
else
echo -en "Automatic node repair is disable for Kubernetes Clusters." "${re}        [ Warning ]${xx}"
scoren34=$((scoren33 + 0))
fi

}

check; show k8s7
result; k8s_autorep
echo -en '\n'
dash
echo -en '\n'


k8s_autoupg(){

check_auto_upg=$(gcloud container node-pools describe $get_pool --cluster $get_ks_name --zone us-central1-a | grep autoUpg | awk '{print $2}')

if [[ $check_auto_upg == *"true"* ]]
then
echo -en "Automatic node repair is enabled for Kubernetes Clusters." "${gr}     [ OK ]${xx}"
scoren35=$((scoren34 + num))
else
echo -en "Automatic node repair is disable for Kubernetes Clusters." "${re}         [ Warning ]${xx}"
scoren35=$((scoren34 + 0))
fi

}

check; show k8s8
result; k8s_autoupg
echo -en '\n'
dash
echo -en '\n'

k8s_cos(){

#read -p 'Pool name: ' p_name
#read -p 'Zone name: ' z_name
#read -p 'Cluster name: ' cl_name

get_cos=$(gcloud container node-pools describe $get_pool --zone us-central1-a --cluster $get_ks_name --format json | grep imageType | awk '{print $2}' | sed 's/\"//g' | cut -c1-3)

if [[ $get_cos == "COS" ]]
then
echo -en "Container-Optimized OS is used for Kubernetes Engine." "${gr}                     [ OK ]${xx}"
scoren36=$((scoren35 + num))
else
echo -en "Container-Optimized OS is not used for Kubernetes Engine."  "${re}         [ Warning ]${xx}"
scoren36=$((scoren35 + 0))
fi

}

check; show k8s9
result; k8s_cos
echo -en '\n'
dash
echo -en '\n'

k8s_b_auth(){


#read -p 'Cluster name: ' c_name
#echo -en '\n'
#read -p 'Zone name: ' z_name
#echo -en '\n'


check_bauth=$(gcloud container clusters describe $get_ks_name --zone us-central1-a --format json | grep -B3 masterAuthorizedNetworksConfig | grep password | awk '{print $2}' | sed 's/\"//g')

if [[ $check_bauth == *""* ]]
then
echo -en "Basic Authentication is enabled on Kubernetes Engine Clusters." "${re}         [ Warning ]${xx}"
scoren37=$((scoren36 + 0))
else
echo -en "Basic Authentication is disabled on Kubernetes Engine Clusters."  "${gr}                     [ OK ]${xx}"
scoren37=$((scoren36 + num))
fi

}


check; show k8s10
result; k8s_b_auth
echo -en '\n'
dash
echo -en '\n'



k8snetpol(){

netpolch=$(gcloud container clusters describe $get_ks_name --zone us-central1-a --format json  | jq '.networkPolicy')

if [[ $netpolch == "{}" ]]
then
echo -en "Network policy is disabled for this Cluster!" "${re}    [ WARNING ]${xx}"
scoren38=$((scoren37 + 0))
else
echo -en "Network policy is enabled for this Cluster!" "${gr}    [ OK ]${xx}"
scoren38=$((scoren37 + num))
fi


}

check; show k8s11
result; k8snetpol
echo -en '\n'
dash
echo -en '\n'


clientcert(){

checkcert=$(gcloud container clusters describe $get_ks_name --zone us-central1-a --format json | jq '.masterAuth.clientKey')


if [[ $checkcert == "null" ]]
then
echo -en "Client certificate not using on this Cluster!" "${re}    [ WARNING ] ${xx}"
scoren39=$((scoren38 + 0))
else
echo -en  "Client certificate not using on this Cluster!" "${gr}    [ OK ] ${xx}"
scoren39=$((scoren38 + num))
fi
}


check; show k8s12
result; clientcert
echo -en '\n'
dash
echo -en '\n'


vpcnative(){

checkvpcnt=$(gcloud container clusters describe $get_ks_name --zone us-central1-a --format json | jq  '.ipAllocationPolicy.useIpAliases')

if [[ $checkvpcnt == "true" ]]
then
echo -en "VPC Native is enabled." "${gr}    [ OK ] ${xx}"
scoren40=$((scoren39 + num))
else
echo -en "VPC native is disabled." "${re}    [ WARNING ] ${xx}"
scoren40=$((scoren39 + 0))
fi


}

check; show k8s13
result; vpcnative
echo -en '\n'
dash
echo -en '\n'


podsecpoli(){

checkpodpol=$(gcloud container clusters describe $get_ks_name --zone us-central1-a --format json |  jq '.podSecurityPolicyConfig')

if [[ $checkpodpol != "null" ]]
then
echo -en "Pod Security Policy is enabled." "${gr}    [ OK ] ${xx}"
scoren41=$((scoren40 + num))
else
echo -en "Pod Security Policy is disabled." "${re}    [ WARNING ] ${xx}"
scoren41=$((scoren40 + 0))
fi

}


check; show k8s14
result; podsecpoli
echo -en '\n'
dash
echo -en '\n'

privclus(){

checkprivclus=$(gcloud container clusters describe $get_ks_name --zone us-central1-a --format json |  jq '.privateCluster')

if [[ $checkprivclus != "null" ]]
then
echo -en "Private cluster is enabled." "${gr}    [ OK ] ${xx}"
scoren42=$((scoren41 + num))
else
echo -en "Private cluster is disabled." "${re}    [ WARNING ] ${xx}"
scoren42=$((scoren41 + 0))
fi

}


check; show k8s15
result; privclus
echo -en '\n'
dash
echo -en '\n'



privgoogleac(){

get_subnetw=$(gcloud container clusters describe denizparlakcluster --zone us-central1-a --format json |  jq '.subnetwork' | sed 's/"//g')

checksubnet=$(gcloud compute networks subnets describe $get_subnetw --region us-central1 --format json | jq '.privateIpGoogleAccess')

if [[ $checksubnet == "false" ]]
then
echo -en "Private Google access is not set on the Cluster subnetwork." "${re}  [ WARNING ] ${xx}"
scoren43=$((scoren42 + 0))
else
echo -en "Private Google access is set on the Cluster subnetwork." "${gr}  [ OK ] ${xx}"
scoren43=$((scoren42 + num))
fi


}


check; show k8s16
result; privgoogleac
echo -en '\n'
dash
echo -en '\n'


projacc(){


checkprojacc=$(gcloud container node-pools describe $get_pool --cluster $get_ks_name --zone us-central1-a --format json | jq '.config.serviceAccount' | sed 's/"//g')

if [[ $checkprojacc == "default" ]]
then
echo -en "Service account is used for project access in the Cluster." "${re}  [ WARNING ] ${xx}"
scoren44=$((scoren43 + 0))
else
echo -en "Service account is not used for project access in the Cluster." "${gr}  [ OK ] ${xx}"
scoren44=$((scoren43 + num))
fi
}

check; show k8s17
result; projacc
echo -en '\n'
dash
echo -en '\n'

authscopes(){

scopenum=$(gcloud container node-pools describe $get_pool --cluster $get_ks_name --zone us-central1-a --format json | jq '.config.oauthScopes' | wc -l)

if [ $scopenum > 5 ]
then
echo -en "Project access scope is not minimal."  "${re}  [ WARNING ] ${xx}"
scoren45=$((scoren44 + 0))
else
echo -en "Project access scope is minimal." "${gr}  [ OK ] ${xx}"
scoren45=$((scoren44 + num))
fi

}

check; show k8s18
result; authscopes
echo -en '\n'
dash
echo -en '\n'


echo "Your total score is $scoren45/100"

}


if [[ $1 == "--only-iam" ]]
then
var="a"
iam_clus
exit 1
elif [[ $1 == "--only-log" ]]
then
net_clus
exit 1
elif [[ $1 == "--only-network" ]]
then
net_clus
exit 1
elif [[ $1 == "--only-vms" ]]
then
vm_clus
exit 1
elif [[ $1 == "--only-storage" ]]
then
stor_clus
exit 1
elif [[ $1 == "--only-sql" ]]
then
sql_clus
exit 1
elif [[ $1 == "--only-k8s" ]]
then
k8s_clus
exit 1
elif [ "$#" -eq "0" ]
then
iam_clus
log_clus
net_clus
vm_clus
stor_clus
sql_clus
k8s_clus
exit 1
else
echo "wtf?"
fi
