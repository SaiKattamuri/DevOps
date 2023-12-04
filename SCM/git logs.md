The git log command displays all of the commits in a repository's history with who did and what files changed, along with the commit ID and message.

  ![image](https://github.com/SaiKattamuri/DevOps/assets/50263861/34e27737-2e0d-40ca-a8c7-cb26ee04c30f)

    git log - To get the all details of all commits
    git log x - X represents the no of commits to show
    git log --oneline - To show short messages
    git log --decorate --graph - show the commit msgs as graphical, as the reference message
    git log -s "msg" - To search string "msg" and returns which files have the string
    git log -G "%sai&" - To do a regexp search of a string
    git shortlog - To show the author name and their commit messages only
    git shortlog -n - Show the commit msgs alphabetically ordered
    git log --author=name - To show commits done by a specific author
    git log --after '3 days ago' - filter by time range
    git log --after '2023-03-05' - filter by time range
    git log master..child - logs between two branches
    git log --name-only - To get the file names with commit id

**Git reflog**
If we want to get back the completely deleted commit, we use the git reflog:

    git reflog
    git  checkout Head@{1}
    
