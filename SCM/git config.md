In git we can query/set/replace/unset options of the local repository config using "**git config**" command. The config will scope of different levels such as:

1. system : $(prefix)/etc/gitconfig
2. global : ~/.gitconfig
3. local: .git/config
4. worktree: $GIT_DIR/config.worktree

Here we can list some of the useful config for git:

Note: we use --global as global config, if required replace the global keyword with local or system.

1. Config the User details

       git config --globale user.name "sai.kattamuri"   
       git config --global  user.name "user@email_domain.com"
   
2. Config the default branch name

       git config --global init.defaultBranch name
   
3. Config the editor to managed the files to add content

       git config --global core.editor "vim"

4. To igore a specific file

       git congfig --global core.excludes file_name.txt
   
5. To make filenames as case sensitive

       git config core.ignorecase true
   
6. To set the proxy for the git repo

        git config --global http.proxy "proxy details"
   
7. To unset the proxy details for git repo

        git config --global --unset http.proxy ""

8. To list the all the config available in the repo

        git config --list
9. Set the merge tool or editor

         git config merge.tool "tool_name"
10. Config Line endings.

          git config --global core.autocrif input
11. set aliass

          git config --global alias.online git log --online

12. Set the push behavior

      git config --gllobal push.default simple
13. Set Auto correct for typos:

      git config --global help.autocorrect 1
14. Config the git to ignore the file permissions

      git config core.fileMode false

15. Config the autostash for rebase:

      git config --global rebase.autostash
    
