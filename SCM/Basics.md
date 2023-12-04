SCM/VC, Which means versioning and tracking the information. In day-to-day activities, we may need to make changes and manage the changes to and fro, and in case of a large number of changes.
In such cases either we need to take manual backups or versions of the source code, the management of source code in a group of developers is a hard job.

So, We can use tools like **SCM(Source Code Management)/VC (Version Controller)**. Using these SCM tools we can go into history and get the older version of our code to live.

<p align="center">
  <img src="https://github.com/SaiKattamuri/DevOps/assets/50263861/0c21d56f-1518-4840-b7b5-180e58b54f88" width="400" height="200">
</p>

For Ex:
  - I want to create a "myfile.txt" and add content like "I am a test file"
  - After a few months as per the requirement, I changed the content to "I am an original file"
  - After some time, I need to bring back the old content, then we need to rewrite the file again.

It is a small content, so we can use and revoke the data, but in real-time we will work on hundreds and thousands of lines of code. It will be difficult to manage the files.

There are two types of SCM tools:
  1. **Centralized** VC - Ex: SVN
  2. **Distributed** VC - Ex: Github, Git Lab, Bit Bucket, Gerrit.

<p align="center">
   <img src="https://github.com/SaiKattamuri/DevOps/assets/50263861/d801103a-a124-4ad7-9093-4d69a0c2dab5">
</p>

In current days almost all projects use Distributed VC, here there are two types of version control are possible.
  1. **Local Repository -** Git
  2. **Remote Repository -** GitHub, Git Lab, Bit Bucket, Gerrit

The term repository means: a repository is a place where you dump things; source code, config files, variables, images, etc..
**Note:** It is better to not add sensitive information like "Passwords", "secret data"

**Local Repos**: Owned by individual developers to contribute to the team, create sources and contribute to the team, or collect the data remotely and add files or change the files.

**Remote Repos**: A collective dump of all the users for the project.
<h3>Git Installation</h3>
  Git is available for Windows, Linux, and Mac in terms of binary files. Based on the OS type we can install the git using the package manager:
  
    For Debian-based: - sudo apt install git -y
    
    For Centos-based: - sudo yum install git -y
  
<h3>Git Work Flow:</h3>

 <p aligin="center">
    <img src="https://github.com/SaiKattamuri/DevOps/assets/50263861/08ebf7f4-0781-4612-a778-59bef47ce82e" width="600" height="400">
 </p>

- **Working area** where the project is created and git is initialized - git init/git clone
- **Staging area** where the files are added for tracking, it is an imaginary or hidden area - git add
- **Local repo** where the files are committed and marked as version - git commit -m "proper message"

There are mainly 3 stages in git:

- Untracked files -- Files avilable in working directory
- Staged/tracking files -- Files added to track, available in staging area.
- Comitted files -- After the comitting the files, will move from stagging to loca repos.

Ex -1:
Create a local git repo then add the remote to push changes as collabration:

1. Create a directory and init the working directory:
<div>
  <p aligin="left">
  
      mkdir test_project  
      cd test_project   
      git init
  </p>
  <img src="https://github.com/SaiKattamuri/DevOps/assets/50263861/9bbca901-48d6-4a0b-9389-86aba3c5946f">  
</div>
**Note**: Please Observe the above reference image:

    - After initializing the working directory as the git directory, the test_project is added as Master and a local repository will be created.
    - The Master is the default branch name after the git init, we can control the name of the default branch by the config.
          git config --global init.defaultbranch main    
    - After git initialization, there will be a hidden directory called "git", which contains the git repository metadata like hooks, remote, Header, objects, config, etc...

For every commit, it will store the user details to understand who made changes on what commit for that we need to config the user details as:
<p>

    git config --global user.name "Sai Kattamuri"
    git config --global user.email "user@domain.com"
  
</p>

2. Add a file to track     

<div>
  <p aligin="left">
    
    git status
    touch file.txt
    git status
    git add
    
  </p>
  
  ![image](https://github.com/SaiKattamuri/DevOps/assets/50263861/1668fac6-04de-4343-8215-c81fa828c59c)
    
</div>
  **Note**: Please Observe the above reference image:

    - git status is used to explain the current status of each file and where we are, from the image we are on the master or main branch.
    - Before adding the file.txt, the git status mentioned that there are no files to track and create files to track
    - After adding the file, the git status is updated as there is a file but not tracked by git.

  ![image](https://github.com/SaiKattamuri/DevOps/assets/50263861/54dabeb9-aab7-435b-b2ec-45c0c8db86dd)

We can use the below command to add to git and track the file

- git add filename - to add the particular file to track
- git add . - to add all the available files to track

Once we run the above commands the file will be added to the staging area. To remove files from the staging area we can use the below command:

  git rm --cached filename

3.  Save the changes to the Local repository.

  <p>
    
       git commit -m "demo file created"    
       git status    
       git log
  </p>

  ![image](https://github.com/SaiKattamuri/DevOps/assets/50263861/c5c53aa0-b559-45cc-bc60-d9f4ba648b09)


 **Note**: After execution of the commit
 
    - The git will generate a unique 16-digit sha-id to represent each commit.
    - The sha-id is used to retrieve the file's data from history.
    - And after committing the work area will show as clean
    - The first commit also called as **~Head**
    - While the commits increases the Head will points to the latest commit similar to stack

4. Add the remote repository and push the changes

     <p>
       
         git remote add origin "git url"
       
         git push --set-upstream origin branch name
     </p>
    
    The git url is from git hub/gitlab/ gerrit, for that first we need to create a remote repo then add the synch between remote and local repo using the ssh key pair.

   **Here the origin is a name for the git remote synch link at local, we can use any name but better to follow process

 
Ex -2:
Clone the existing repo and add changes as a collabration

<p>

    git clone "git url"
    cd name_git
    touch file[1-5].txt
    git add .
    git commit -m "Adding files to repo"
    git push -u origin master
</p>

**Recomendations:**
    - Before starting any changes to the files, use the git pull. So no overwritten happen.
  
