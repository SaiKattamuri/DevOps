To ignore the list of files/folders to commit, we can use a file "**.gitignore**". Then add the file to local repo to limit the commit files:

    touch .gitignore
    
inside the gitignore add the file or folder names as:
    *log  # to ignore all the logs naming files
    temp/  # to ignore the folder temp
    !main.log  # to ignore all logs but not main.log file
    name[abc].file # To ignore files like nameb.file namea.file namec.file

Scope of gitignore can be set as:

  1. global

         git config --global core.excludefiels /path/.ignorefile
  2. local

         $GIT_DIR/.git/info/exclude
  5. system

         git config --system core.systemexcludefiels /path/.ignorefile
