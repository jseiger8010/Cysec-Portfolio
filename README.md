## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

(jseiger/ELK_Stack_Deployment/Diagrams/Diagram_of_the_ELK_Network.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the .yml file may be used to install only certain pieces of it, such as Filebeat.
The Playbooks can be found in jseiger/ELK_Stack_Deployment/Ansible 
  -filebeat-playbook.yml
  -metricbeat-playbook.yml

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly exposed, in addition to restricting accesss to the network.
- The load balancers protect the main network from geting overloaded. The advantage of having a jumpbox is the ability to setup and acees the containers_

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the _____ and system _____.
- Filebeat wateches and ships log files amoong the variors servers.
- Metricbeat records the metrics of the system as well as services like apache, MySQL Nginx and others.

The configuration details of each machine may be found below.


| Name     |  Function  | IP Address | Operating System |
|----------|------------|------------|------------------|
| Jump Box |  Gateway   | 10.0.0.1   | Linux            |
| Web1     |  Container | 10.0.0.5   | Linux            |
| Web2     |  Container | 10.0.0.6   | Linux            |
| Web2     |  Container | 10.0.0.7   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the ELK server machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 67.166.105.45

Machines within the network can only be accessed by the jump box provisioner.

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes/No              | 10.0.0.1 10.0.0.2    |
|          |                     |                      |
|          |                     |                      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually. The main advantage of automating configuration with Ansible is expediency, redundancy and control over the enviroment

The playbook implements the following tasks:
- ...installs Docker
- ...Downloads Filebeat image
- ...Downloads Metricbeat image

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.
(jseiger/ELK_Stack_Deployment/Images/docker_ps_output.jpg)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- 10.0.0.5
- 10.0.0.6
- 10.0.0.7

We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:
- Filebeat collects the logs for the farios machines and services

- Metricbeat collects the system metrec data from the various machines and services

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the YML file to The new machine.
- Update the config file to include the new machine's ip address.
- Run the playbook, and navigate to the VM to check that the installation worked as expected.

