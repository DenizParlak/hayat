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

echo -en '\n'

iam_scr(){

echo -en "${bl}  # Identity and Access Management${xx}"
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


iam1="Use corporate login credentials instead of Gmail accounts."

iam3="Ensure that there are only GCP-managed service account keys for each service account."
iam4="Ensure that ServiceAccount has no Admin privileges."
iam5="Ensure that IAM users are not assigned Service Account User role at project level."


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


echo -en  "  ██░ ██  ▄▄▄     ▓██   ██▓ ▄▄▄     ▄▄▄█████▓  '\n'"
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



iam_clus(){

read  -p 'Project name: ' project
echo -en '\n'

iam_check_gmail(){


check_mail=$(gcloud projects get-iam-policy $project | grep gmail)

mailb=$(gcloud projects get-iam-policy $project | grep gmail | awk -F ":" '{print $2}' | uniq)

if [[ $check_mail == *"gmail"* ]]
then
echo -en "Current mail: $mailb" "${re}                         [ Warning ]${xx}"
else
echo -en "Current mail policy is fine." "${gr}                               [ OK ]${xx}"
fi
}

iam_scr
check; show iam1
result; iam_check_gmail
echo -en '\n'
dash
echo -en '\n'


serv_acc_key(){

get_iam_acc=$(gcloud iam service-accounts list | awk '{print $6}' | grep @)
check_iam_acc=$(gcloud iam service-accounts keys list --iam-account=$get_iam_acc --managed-by=user 2>&1)

if [[ $check_iam_acc == *"items"* ]]
then
echo -en "Service Account has no any key." "${gr}                               [ OK ]${xx}"
else
echo -en "Service Account has a key." "${re}                         [ Warning ]${xx}"
fi

}

check; show iam3
result; serv_acc_key
echo -en '\n'
dash
echo -en '\n'



iam_service_acc(){

editor_serv_accs=$(gcloud projects get-iam-policy $project | grep -A 2 service | sed '$d' | grep -B10 'editor' | grep -v members | awk '/role*/{f=1;next}/\*editor/{f=0} f')

echo $editor_serv_accs > ed.txt

if [ -s ed.txt  ]
then
echo -en "These Service Accounts has Editor role." "${re}                       [ Warning ]${xx}"
else
echo -en "There is no any Service Accounts with Editor role." "${gr}   Ok${xx}"
rm -f ed.txt
fi
}

check; show iam4
result; iam_service_acc
echo -en '\n'
dash
echo -en '\n'


iam_serv(){

get_iam_serv=$(gcloud projects get-iam-policy $project | grep roles | grep iam.serviceAcc)

if [[ $get_iam_serv == " " ]]
then
echo -en "IAM users are not assigned Service Account User."
else
echo -en "IAM users are assigned Service Account User."
fi

}

check; show iam5
result; iam_serv
echo -en '\n'
dash
echo -en '\n'

}

: 'if [[ $1 == "iam_clus" ]]
then
iam_clus
exit 1
elif [[ $1 == "iam" ]]
exit 1
fi '


net_clus(){

net_default(){

check_def=$(gcloud compute networks list | grep defa | awk {'print $1'})

if [[ $check_def == *"def"* ]]
then
echo -en "The project has "default" network." "${re}                              [ Warning ]${xx}"
else
echo -en "There is no any "default" network for the project." "${gr}   Ok${xx}"
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
else
echo -en "There is no any "legacy" network for the project." "${gr}               [ OK ]${xx}"
fi

}

check; show netw2
result; net_legacy
echo -en '\n'
dash
echo -en '\n'


net_dnssec(){

check_dnssec=$(gcloud beta dns managed-zones list | awk '{print $1}' | sed  '1d')

check2=$(gcloud beta dns managed-zones describe "$check_dnssec" | grep state | awk '{print $2}')

if [[ $check2 == "on" ]]
then
echo -en "DNSSEC is enabled." "${gr}   Ok${xx}"
else
echo -en "DNSSEC is disabled." "${re}                                           [ Warning ]${xx}"
fi

}

check; show netw3
result; net_dnssec
echo -en '\n'
dash
echo -en '\n'



keysign_dnssec(){

check_sign=$(gcloud beta dns managed-zones describe test1 | grep -B2 keySign | grep algorithm | awk '{print $3}')

if [[ $check_sign == "rsasha1" ]]

then
echo -en "RSASHA1 is enabled for key-signing." "${re}   Warning${xx}"
else
echo -en "RSASHA1 is disabled for key-signing." "${gr}                          [ OK ]${xx}"
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
else
echo -en "RSASHA1 is disabled for key-signing." "${gr}                          [ OK ]${xx}"
fi
}

check; show netw5
result; zonesign_dnssec
echo -en '\n'
dash
echo -en '\n'


ssh_rest(){


check_generic=$(gcloud compute firewall-rules list --format=table'(name,direction,sourceRanges,allowed.ports)' | grep ssh | awk '{print $3}' |  grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | grep 0. | grep 0.0)

if [[ $check_generic == "0.0.0.0" ]]
then
echo -en "SSH traffic source 0.0.0.0" "${re}                                    [ Warning ]${xx}"
else
echo -en "SSH traffic source is $check_generic" "${gr}                          [ OK ]${xx}"
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
else
echo -en "RDP traffic source is $check_generic2" "${gr}   Ok${xx}"
fi

}

check; show netw7
result; rdp_rest
echo -en '\n'
dash
echo -en '\n'

:'priv_goac(){


check_goac=$(gcloud compute networks subnets describe default --region us-central1 | grep privateIp | awk '{print $2}')

if [[ $check_goac == "false" ]]
then
echo -en "Private Google Access is disabled." "${re}                            [ Warning ]${xx}"
else
echo -en "Private Google Access is enabled."  "${gr}   Ok${xx}"
fi
}

check; show netw8
result; priv_goac
echo -en '\n'
dash
echo -en '\n''

vflow(){

check_flow=$(gcloud compute networks subnets describe default --region us-central1 --format=json | grep enableFlow | awk '{print $2}')

if [[ $check_flow == *"true"* ]]
then
echo -en "VPC Flow logs are enabled." "${gr}                                    [ OK ]${xx}"
else
echo -en "VPC Flow logs are disabled." "${re}   Warning${xx}"
fi

}

check; show netw9
result; vflow
echo -en '\n'
dash
echo -en '\n'

}

: 'if [[ $1 == "iam_clus" ]]
then
iam_clus
exit 1
elif [[ $1 == "net_clus" ]]
then
net_clus
exit 1
else
exit 1
fi '



vm_clus(){


read  -p 'Instance name: ' instance
echo -en '\n'


cloudapi(){

check_fullacc=$(gcloud compute instances describe $instance | grep -A20 scopes | grep https://www.googleapis.com | grep -v zone)

if [[ $check_fullacc == *"cloud-platform"* ]]
then
echo -en "Instance have full access to Cloud API." "${re}   Warning${xx}"
else
echo -en "Instance does not have full access to Cloud API." "${gr}                          [ OK ]${xx}"

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
else
echo -en "Block Project-wide SSH keys disabled." "${re}                                     [ Warning ]${xx}"
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
else
echo -en "oslogin is disabled." "${re}                                          [ Warning ]${xx}"
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
else
echo -en "Serial ports are enabled."  "${re}   Warning${xx}"
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
else
echo -en "IP Forwarding enabled." "${re}                                          [ Warning ]${xx}"
fi

}

check; show vm5
result; ip_fw
echo -en '\n'
dash
echo -en '\n'

}

stor_clus(){

read  -p 'Bucket name: ' bucket
echo -en '\n'

bucket_auth(){

check_bucket=$(gsutil ls)

check_bucket_iam=$(gsutil iam get "$check_bucket")

if [[ $check_bucket_iam == *"allAuthenticated"* ]]
then
echo -en "Bucket is publicly accessible." "${re}                                          [ Warning ]${xx}"
else
echo -en "Bucket is not anonymously." "${gr}                                    [ OK ]${xx}"
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
else
echo -en "Bucket logging is enabled." "${gr}                                         [ OK ]${xx}"
fi

}

check; show stor3
result; bucket_log
echo -en '\n'
dash
echo -en '\n'

}

sql_clus(){


: 'read  -p 'SQL instance name: ' sqla
echo -en '\n''


sql_ssl(){

get_sql_name=$(gcloud sql instances list | awk '{print $1}'  | grep -v N)

check_sql_ssl=$(gcloud sql instances describe $get_sql_name | grep requireSsl)

if [[ $check_sql_ssl == *"true"* ]]
then
echo -en "SSL is enabled for SQL instance." "${gr}                                   [ OK ]${xx}"
else
echo -en "SSL is disabled for SQL instance." "${re}                             [ Warning ]${xx}"
fi

}

sql_scr
check; show sql1
result; sql_ssl
echo -en '\n'
dash
echo -en '\n'


sql_ip(){

check_sql_ip=$(gcloud sql instances describe $get_sql_name | grep -A5 authorizedNet | grep 0.0.0.0 | grep value | awk '{print $2}')

if [[ $check_sql_ip == *"0.0.0.0"* ]]
then
echo -en "SQL network is open to the world." "${re}                             [ Warning ]${xx}"
else
echo -en "SQL network is seems fine." "${gr}                                   [ OK ]${xx}"
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
else
echo -en "MySQL root password is enabled." "${re}                             [ Warning ]${xx}"
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
else
echo -en "MySQL intance does not allows root login from any host." "${gr}                [ OK ]${xx}"
fi

}

check; show sql4
result; mysql_any_host
echo -en '\n'
dash
echo -en '\n'

}

k8s_clus(){

ks_stackd(){

get_ks_name=$(gcloud container clusters list |  awk '{print $1}' | grep -v NAME)
get_ks_zone=$(gcloud container clusters list | awk '{print $2}' | grep -v LOCA)
check_ks_log=$(gcloud container clusters describe $get_ks_name --zone $get_ks_zone | grep loggingSer | awk '{print $2}')

if [[ $check_ks_log == *"logging.googleapis"* ]]
then
echo -en "Stackdriver is enabled for Kubernetes." "${gr}                        [ OK ]${xx}"
else
echo -en "Stackdriver is disabled for Kubernetes." "${re}                 [ Warning ]${xx}"
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
else
echo -en "Stackdriver monitoring is disabled for Kubernetes." "${re}                 [ Warning ]${xx}"
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
else
echo -en "Legacy Authorization is disabled for Kubernetes." "${re}              [ Warning ]${xx}"
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
else
echo -en "Master authorized networks is enabled." "${gr}                    [ OK ]${xx}"
fi

}

check; show k8s4
result; ks_mauth_net
echo -en '\n'
dash
echo -en '\n'


k8s_label(){

ks_check_label=$(gcloud container clusters describe deniz-cl --zone us-central1-a | grep Label)

if [[ ks_check_label == "" ]]
then
echo -en "Kubernetes Clusters are not configured with Labels." "${re}                       [ Warning ]${xx}"
else
echo -en "Kubernetes Clusters are configure with Labels." "${gr}                [ OK ]${xx}"
fi

}


check; show k8s5
result; k8s_label
echo -en '\n'
dash
echo -en '\n'

k8s_dashb(){

ks_check_dashb=$(gcloud container clusters describe deniz-cl --zone us-central1-a | grep Dashb)

if [[ ks_check_dashb == "" ]]
then
echo -en "Kubernetes using Dashboard." "${re}                       [ Warning ]${xx}"
else
echo -en "Kubernetes not using Dashboard." "${gr}                               [ OK ]${xx}"
fi

}


check; show k8s6
result; k8s_dashb
echo -en '\n'
dash
echo -en '\n'



k8s_autorep(){

check_auto_rep=$(gcloud container node-pools describe default-pool --cluster deniz-cl --zone us-central1-a | grep autoRepa | awk '{print $2}')

if [[ $check_auto_rep == *"true"* ]]
then
echo -en "Automatic node repair is enabled for Kubernetes Clusters." "${gr}     [ OK ]${xx}"
else
echo -en "Automatic node repair is disable for Kubernetes Clusters." "${re}        [ Warning ]${xx}"
fi

}

check; show k8s7
result; k8s_autorep
echo -en '\n'
dash
echo -en '\n'


k8s_autoupg(){

check_auto_upg=$(gcloud container node-pools describe default-pool --cluster deniz-cl --zone us-central1-a | grep autoUpg | awk '{print $2}')

if [[ $check_auto_upg == *"true"* ]]
then
echo -en "Automatic node repair is enabled for Kubernetes Clusters." "${gr}     [ OK ]${xx}"
else
echo -en "Automatic node repair is disable for Kubernetes Clusters." "${re}         [ Warning ]${xx}"
fi

}

check; show k8s8
result; k8s_autoupg
echo -en '\n'
dash
echo -en '\n'

k8s_cos(){

read -p 'Pool name: ' p_name
read -p 'Zone name: ' z_name
echo -en '\n'
read -p 'Cluster name: ' cl_name
echo -en '\n'

get_cos=$(gcloud container node-pools describe $p_name --zone $z_name --cluster $cl_name --format json | grep imageType | awk '{print $2}' | sed 's/\"//g' | cut -c1-3)

if [[ $get_cos == "COS" ]]
then
echo -en "Container-Optimized OS is used for Kubernetes Engine." "${gr}                     [ OK ]${xx}"
else
echo -en "Container-Optimized OS is not used for Kubernetes Engine."  "${re}         [ Warning ]${xx}"
fi

}

check; show k8s9
result; k8s_cos
echo -en '\n'
dash
echo -en '\n'

k8s_b_auth(){

read -p 'Cluster name: ' c_name
echo -en '\n'
read -p 'Zone name: ' z_name
echo -en '\n'


check_bauth=$(gcloud container clusters describe $c_name --zone $z_name --format json | grep -B3 masterAuthorizedNetworksConfig | grep password | awk '{print $2}' | sed 's/\"//g')

if [[ $check_bauth == *""* ]]
then
echo -en "Basic Authentication is enabled on Kubernetes Engine Clusters." "${re}         [ Warning ]${xx}"
else
echo -en "Basic Authentication is disabled on Kubernetes Engine Clusters."  "${gr}                     [ OK ]${xx}"
fi

}


check; show k8s10
result; k8s_b_auth
echo -en '\n'
dash
echo -en '\n'

}


if [[ $1 == "--only-iam" ]]
then
iam_clus
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
net_clus
vm_clus
stor_clus
sql_clus
k8s_clus
exit 1
else
echo "wtf?"
fi
