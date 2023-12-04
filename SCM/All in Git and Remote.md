SCM/VC, Which means versioning and tracking the information. In day-to-day activities, we may need to make changes and manage the changes to and fro, and in case of a large number of changes.
In such cases either we need to take manual backups or versions of the source code, the management of source code in a group of developers is a hard job.

So, We can use tools like **SCM(Source Code Management)/VC (Version Controller)**. Using these SCM tools we can go into history and get the older version of our code to live.

For Ex:
  - I want to create a "myfile.txt" and add content like "I am a test file"
  - After a few months as per the requirement, I changed the content to "I am an original file"
  - After some time, I need to bring back the old content, then we need to rewrite the file again.

It is a small content, so we can use and revoke the data, but in real-time we will work on hundreds and thousands of lines of code. It will be difficult to manage the files.

There are two types of SCM tools:
  1. **Centralized** VC - Ex: SVN
  2. **Distributed** VC - Ex: Github, Git Lab, Bit Bucket, Gerrit.

In current days almost all projects use Distributed VC, here there are two types of version control are possible.
  1. **Local Repository -** Git
  2. **Remote Repository -** GitHub, Git Lab, Bit Bucket, Gerrit

The term repository means: a repository is a place where you dump things; source code, config files, variables, images, etc..
**Note:** It is better to not add sensitive information like "Passwords", "secret data"

