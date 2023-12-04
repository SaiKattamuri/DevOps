We can alter the git history by making the changes alive or discord them, there are 3 types of changes can perform:

1. Git interactive rebase
2. Git Revert
3. git Reset

**Git interactive rebase:**

When we want to reorder, modify or delete the git commit messages locally, we can use git rebase:

          git rebase -i Head~5

          Here the window will open with the last 5 commit messages to alter.
          
![image](https://github.com/SaiKattamuri/DevOps/assets/50263861/c985fe74-cbff-4a05-89b9-066828d67aac)

To delete the commit messages use the "**delete**" in place of pick and enter, the commit id will be deleted.
To combine the commit messages use the "**squash**" in place of pick and enter.
To edit the commit messages, use the "**reword**".

While performing rebase, there are chances of git conflicts and merging the code then continuing for next rebase or abort the rebase using:

      git rebase --abort


**Git Revert:**

Sometimes **after pushing the code to remote**, we may need to revert the changes, so we can use git revert and **it will add a new commit ID for reverting the changes and deleting the head commit.
But the changes made in the working area won't change.**

          git revert commitid


**Git Reset**:
Resets the current branch to a specific commit, either preserving or discording changes in the working directory

There are two types of resets:

**1. Soft Reset:**
Resets the branch to the specific commit, but keeps the changes in the working area.

          git reset --soft commitid

**2. Hard Reset:**
Resets the branch to the specific commit, but discords the changes in the working area.

          git reset --soft commitid

  Useful when we need to **discord the local commits** before sharing with the team (remote repo).
