In real-time there will be chances that after committing the changes and pushing to remote, we again need to do some changes and push them.
But we don't need to add again a new commit, then we can use the **commit amend** feature as:

- Do the needful changes like adding or removing the content of files or files
- Add the changes to staging area:

      git add .
  
- Commit the new changes to the current Head

      git commit --amend --no-edit

** But there is a chance of changing the commit ID with the same commit message

![image](https://github.com/SaiKattamuri/DevOps/assets/50263861/0836c47b-2e3f-4e7d-be8d-90a044aa34e6)


There are some chances to combined use of cherry-pick and git commit amend
