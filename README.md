# Hayat

Google Cloud Platform Auditing &amp; Hardening Script ~

Hayat is a auditing & hardening script for Google Cloud Platform services such as:

- Identity & Access Management
- Networking
- Virtual Machines
- Storage
- Cloud SQL Instances
- Kubernetes Clusters

## Identity & Access Management
- Ensure that corporate login credentials are used instead of Gmail accounts.
- Ensure that there are only GCP-managed service account keys for each service account.
- Ensure that ServiceAccount has no Admin privileges.
- Ensure that IAM users are not assigned Service Account User role at project level.

## Networking
- Ensure the default network does not exist in a project.
- Ensure legacy networks does not exists for a project.
- Ensure that DNSSEC is enabled for Cloud DNS.
- Ensure that RSASHA1 is not used for key-signing key in Cloud DNS DNSSEC.
- Ensure that RSASHA1 is not used for zone-signing key in Cloud DNS DNSSEC.
- Ensure that RDP access is restricted from the Internet.
- Ensure Private Google Access is enabled for all subnetwork in VPC Network.
- Ensure VPC Flow logs is enabled for every subnet in VPC Network.

## Virtual Machines
- Ensure that instances are not configured to use the default service account with full access to all Cloud APIs.
- Ensure "Block Project-wide SSH keys" enabled for VM instances.
- Ensure oslogin is enabled for a Project.
- Ensure 'Enable connecting to serial ports' is not enabled for VM Instance.
- Ensure that IP forwarding is not enabled on Instances.

## Storage
- Ensure that Cloud Storage bucket is not anonymously or publicly accessible.
- Ensure that logging is enabled for Cloud storage bucket.

## Cloud SQL Database Services
- Ensure that Cloud SQL database instance requires all incoming connections to use SSL.
- Ensure that Cloud SQL database Instances are not open to the world.
- Ensure that MySql database instance does not allow anyone to connect with administrative privileges.
- Ensure that MySQL Database Instance does not allows root login from any host.

## Kubernetes Engine
- Ensure Stackdriver Logging is set to Enabled on Kubernetes Engine Clusters.
- Ensure Stackdriver Monitoring is set to Enabled on Kubernetes Engine Clusters.
- Ensure Legacy Authorization is set to Disabled on Kubernetes Engine Clusters.
- Ensure Master authorized networks is set to Enabled on Kubernetes Engine Clusters.
- Ensure Kubernetes Clusters are configured with Labels.
- Ensure Kubernetes web UI / Dashboard is disabled.
- Ensure `Automatic node repair` is enabled for Kubernetes Clusters.
- Ensure Automatic node upgrades is enabled on Kubernetes Engine Clusters nodes.

# Requirements

Hayat has been written in bash script using gcloud and it works in Linux/UNIX and OSX.

# Usage

git clone https://github.com/DenizParlak/Hayat.git && cd Hayat && chmod +x hayat.sh && ./hayat.sh

# Screenshots

![image](https://i.hizliresim.com/lqLbBX.jpg

![ScreenShot](https://i.hizliresim.com/lqLbBX.jpg)

![ScreenShot](https://i.hizliresim.com/4jDGRL.jpg)
