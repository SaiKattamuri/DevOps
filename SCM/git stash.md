In git sometimes we need to work with ad-hoc requests, so letting the changes and moving to another branch will lead to loss of the work or updates.
So, we can use the git stash to save the uncommitted changes into an imaginary space and retrieve them once we back to the in-line work.

  ![image](https://github.com/SaiKattamuri/DevOps/assets/50263861/80766cb8-5cdc-499b-b9f9-9a2d31084f59)


      git stash # stashes all uncommitted files
      git stash push # creates a new stash, rolls back the state of all modified files, and can stash untracked files in some cases.
      git stash apply # Takes the files in a stash and places them back into the development workspace but doesn't delete the stash from history.
      git stash -u apply # To save the untracked files or working area
      git stash list # To show the stash list
      git stash pop # To get the top saved work
      git stash pop stash@{num} # To get the selected stack work
      git stash drop  # To delete or quit the stashed list
      git stash clear # Removes all stashes from the stash list
      git stash save message # Allows a custom message to be added to a stash for identification.

**Which folder stores git stash history?**
The latest git stash is stored in a hidden folder called a stash stack. The stash stack itself is located in the .git directory inside the /refs/stash file.
