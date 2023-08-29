Contains all my learning related to DevOps tools and tech. From Day 0 to expert, Day 0 we can start today about what is DevOps and the different tools and Techniques in each stage.

<h2> DevOps </h2>
<br>
DevOps is a set of practices, tools, and a cultural philosophy that automates and integrates the processes between software development and IT teams.
DevOps combines development and operations to increase the efficiency, speed, and security of software development and delivery compared to traditional processes. A more nimble software development lifecycle results in a competitive advantage for businesses and their customers.

![image](https://github.com/SaiKattamuri/DevOps/assets/50263861/12ee3522-81fd-41a9-9f2d-32caf9968d23)

There are multiple stages in DevOps and each stage can be a tool or technique.

<h3>SCM/VC:</h3>
To deliver a product to customers, after the Business analysis and requirement gathering the actual development will start, and in the development process, we may generate multiple files either code base (Python, Java, .net, Go, Javascript, Node JS, Shell script, Powershell scripting, etc..) or config files in form of yaml, json, services.
To manage the code with different history versions automatically we can use Source code management (SCM) or version controller. Using these SCM/VC tools we can maintain different versions of each file and retrieve any version at any time.

![image](https://github.com/SaiKattamuri/DevOps/assets/50263861/0c6119e8-2036-4cec-aa17-aebf3e4f3dbf)

Example: 
You are a developer in a team with a group of contributors working together on different individual tasks, and after some days the client changes the specific requirement. So, you have modified your code as per the new changes. Later the client wants to get back to the requirement due to business needs.
We have modified the code earlier as per the client changes and we don’t have a copy of the old version. As we don’t have the old version of the source file, need to edit the code. In case we have the old version easily get back the requirement without losing extra effort and time.
Using the SCM/VC not only gets back the source code, but we can also maintain different lines of source code to enhance or add extra features, can create the branches.
There are two different types of SCM tools:
1.	Centralized
2.	Distributed
   
We can learn about each tool and cover more in-depth concepts when we work on SCM/VC.

<h3>Build tool:</h3>
When we complete the development, we are not going to deliver the code to clients. In the delivery process, we need to make a final build, which is completely compressed packaged ready to deploy.

![image](https://github.com/SaiKattamuri/DevOps/assets/50263861/a76d517b-127c-4118-8ccf-51543dfe346f)

![image](https://github.com/SaiKattamuri/DevOps/assets/50263861/57eca6f3-6d9d-40b0-8319-0c0b5659e932)

below are examples of different code base build tools:  
Source Code	        Build Tool
Java	              Maven, Gradle, and Ant.
Python	            Pip, Pybuild, and Maven with Jython plugin
.net	              MSbuild, zip
JavaScript	        Npm, yarn, webpack
Unix/Linux          rpm-build

<h3>Containerization:</h3>
Containerization involves placing a software component and its environment, dependencies, and configuration, into an isolated unit called a container.
In General, without containerization, the deployment will be like giving the config files, build, and dependency files to the production environment. 
Sometimes due to human environments, the environment setup and config might be missed, So the application might not work the same as in the development environment.
 With the Containerization concept, all the config and dependencies can be packed as a compact size package, which is used to directly deploy into the production environment without any human mistakes

![image](https://github.com/SaiKattamuri/DevOps/assets/50263861/5ad509b3-3935-48eb-a5d2-f79c4d9f7681)

Below are the different containerization tools:
1.	Docker
2.	Kubernetes
3.	Vagrant
4.	Containers
5.	Rkt
6.	Podman

<h3>Infrastructure as code (IaC):</h3>
It is used to automate the process of environment setup and config the environment, the first step is creating an environment. 
The steeping of environments for Development, Testing, and Production takes more time and in case, and if we want to set up multiple environments like 100 machines takes a huge amount of manual effort. To reduce the manual effort of the environment setup we can use IAC code.

![image](https://github.com/SaiKattamuri/DevOps/assets/50263861/57c873e2-78e7-41e0-8e4b-fed303b32a05)

Below are the different IAC example tools:
1.	Terraform
2.	Pulumi
3.	Cloud formation.

After creating the setup might need to configure the environment like pattern changes, services setup, users, groups authentication setup, installing or updating packages, etc.

Below are the config management tools:
1.	Ansible
2.	Salt
3.	Chef
4.	Puppet
   
<h3>CI/CD:</h3>
To organize all the above steps one by one automatically and release the final product to users need a CI/CD tool. The process of the integration of each stage is continuously called continuous integration.
And CD has two different approaches:
1.	Continuous Delivery: It is a strategy in software development where code changes to an application are released with permission or approvals into the production environment.
2.	Continuous Deployment:  It is a strategy in software development where code changes to an application are released automatically into the production environment.

![image](https://github.com/SaiKattamuri/DevOps/assets/50263861/de38a23a-b7d7-4223-be9a-446d92760898)

The CI/CD tools:
1.	Jenkins
2.	Bamboo
3.	GitLab runners
4.	Git Lab actions
5.	Circle Ci
6.	Cloud pipelines

<h3>Monitoring:</h3>
After successfully releasing the product we need to monitor the performance of the application, environment, and logs continuously to avoid downtime for customers. 

![image](https://github.com/SaiKattamuri/DevOps/assets/50263861/3cc10214-008e-4bb3-b64f-4143cd07335d)

1.	Prometheus
2.	Nagios
3.	Grafana
4.	Slack
5.	Datadog
6.	App Dynamics
7.	Sematext Monitoring
8.	Cloud watch from AWS
