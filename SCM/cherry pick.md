Git cherry-pick means picking the commit from the history of the same branch or another branch to the current branch as the head. or picking the head of child branch to another child branch or current branch.

 <p> 
      <img src="https://github.com/SaiKattamuri/DevOps/assets/50263861/0c642535-6454-43e6-b221-ef0463472b64" width="400" height="200">
      <img src="https://github.com/SaiKattamuri/DevOps/assets/50263861/0db18222-c0ff-4c8e-ab7a-943688af36b4">
 </p>

Steps to perform the cherry-pick:

  1. Checkout to the branch from where we need to copy the committed data:

          git checkout branchname
  2. Collect the first 6 digits of commit id from log:

         git log --online -G "commit message"
  4. checkout to branch where needed the commit

         git checkout parentbranch

  5. use cherry-pick command:

         git cherry-pick commitid

![image](https://github.com/SaiKattamuri/DevOps/assets/50263861/5199413d-9559-4848-a1da-89229755e7d0)
