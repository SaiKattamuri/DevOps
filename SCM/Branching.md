In git the default branch or first branch is main, when you want to streamline the deployments it's better to have branches like stable (release) and unstable (development). Depending on the branching strategies in git and projects there may be hotfix branches and feature branches.

A branching strategy, therefore, is the strategy that software development teams adopt when writing, merging, and deploying code when using a version control system.

It is essentially a set of rules that developers can follow to stipulate how they interact with a shared codebase.
Such a strategy is necessary as it helps keep repositories organized to avoid errors in the application and the dreaded merge hell when multiple developers are working simultaneously and are all adding their changes at the same time. 

<p align="center">
     <img src="https://github.com/SaiKattamuri/DevOps/assets/50263861/030e60fa-b5b5-41ca-b0d7-1b707fe2ddaa" width="500">
 </p>

Why you need a branching strategy
As mentioned above, having a branching strategy is necessary to avoid conflicts when merging and to allow for the easier integration of changes into the master trunk.

A branching strategy aims to:
 - Enhance productivity by ensuring proper coordination among developers
 - Enable parallel development
 - Help organize a series of planned, structured releases
 - Map a clear path when making changes to software through to production
 - Maintain a bug-free code where developers can quickly fix issues and get these changes back to production without disrupting the development workflow

To Create the branches

     git branch feature/contactus
              or
     git checkout -b feature/contactus

 To switch the branches between

     git checkout branchname

  To get all the branches available

      git branch -all
          
  To get the all remote branches only

      git branch -r

  To get all the local branches

      git branch -v

  To push a local branch to the remote

      git branch -u origin branchname

  To delete a specific branch

       git branch -d branch_name
       git branch -D branch_name @ delete branch forcefully
       git branch --delete branch_name

   To rename a branch name

        git branch -m newname oldname

   To get the list of merged and unmerged branches

        git branch --merged
        git branch --no-merged

   To get the branch with the latest commit

        git branch -r
        
   To merge a branch

        git merge childbranch
        ** While merging the child branch to the main branch the git head should be pointed to main branch, i.e. we should switch branch to parent
     
** Whenever a new branch is created, the new branch will have all the commit history and files of the branch where it is created for example, if the new branch is created on top of the development branch, then all commit history and files will copies to the new branch.

** When we merge the branch the commits of the new branch will merge to the parent branch in a linear fashion i.e., time-based, the latest commit will be on top of the old commit.

**Fast-Forward merge:**
    It is a type of merge that occurs when the branch being merged into is directly ahead of the branch being merged. It means there are no new changes on the parent branch:

      Initial stage:
           A -- B (master)
                 \
                   C (new branch)

       Making changes only in the new branch:
            A -- B (master)
                 \
                   C -- D --E (new branch)
       
       Now Finally, merging the changes to parent: -- Fast-Forward Merge:
           A -- B -- C -- D --E (Master)     

 **Non-Fast-Forward Merge:**
       It occurs when there are new changes in both the parent and new branches and being merged, This results in a new commit as a merge commit.

       Initial stage:
           A -- B (master)
                 \
                   C (new branch)

       Making changes only in the new branch:
            A -- B -- B2 (master)
                 \
                   C -- D --E (new branch)
       
       Now Finally, merging the changes to parent: -- Non-Fast-Forward Merge:
           A -- B -- B2 -- M (Master)     

        ** Here the M is nothing but a merge commit with the combining of all new branch commits.

**Git rebase:**
Git rebase moves the feature branch histories to the head of the main branch. It creates new commits E’, F’, and G’ for each commit in the feature branch.

The benefit of rebase is that it has a linear commit history.

Rebase can be dangerous if “the golden rule of git rebase” is not followed.
The golden rule of Git rebase: Never use it on public branches

       Initial stage:
           A -- B (master)
                 \
                   C (new branch)

       Making changes only in the new branch:
            A -- B -- B2 (master)
                 \
                   C -- D --E (new branch)
       
       Now Finally, merging the changes to parent: -- git rebase:
           A -- B -- B2 -- C-- D --E (Master)

 Steps to perform git rebase:

       git checkout newbranch
       git rebase parentbranch
       git checkout parentbranch
       git merge branch

