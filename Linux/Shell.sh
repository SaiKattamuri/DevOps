echo "
In a Linux environment most of the time we work with CLI (Commnd line interfaces), which is text text-based command line that interacts with the operating system and returns the response called Shell.
A Shell provides you with an interface to the Unix system. It gathers input from you and executes programs based on that input. When a program finishes executing, it displays that program's output.
Shell is an environment in which we can run our commands, programs, and shell scripts. There are different flavors of a shell, just as there are different flavors of operating systems. Each flavor of the shell has its own set of recognized commands and functions.
The behavior of each shell is different, in some shells, you can use a tab to auto-populate commands, and some shells can easily remove the entered text using a backspace, but few are not helpful.
Shell Types
In Unix, there are two major types of shells −
Bourne shell − If you are using a Bourne-type shell, the $ character is the default prompt.
C shell − If you are using a C-type shell, the % character is the default prompt.

The Bourne Shell has the following subcategories −
Bourne shell (sh)
Korn shell (ksh)
Bourne Again shell (bash)
POSIX shell (sh)

The different C-type shells follow −

C shell (csh)
TENEX/TOPS C shell (tcsh)
"

#To know which shell we using execute the below command
echo $SHELL
# Here echo is a command to print the output from a variable or between the quotes
#And the $SHELL is an environment variable, in Linux, we use the '$' symbol before the variable name.
# We can set the variable as below
Name="Sai"  #Here we have to take care as no trailing (before or after) spaces for the '=' symbol
# To set a variable as environment we can set it as
setenv $Name

#To get all the environment variables
Env

#*** We can discuss the variables as a separate section ***

echo "We use the CLI to interact with the OS, so how do we interact? we use commands to interact with the OS, and there are two types of commands:
1. Builtin commands  - comes with OS kernel like cd, pwd, echo
2. External Commands - packages add-ons from OS flavor repos mv, cp, uptime, date"

While going further we need to understand the file system of OS, in the Linux filesystem, every directory has its own purpose.

 / (root filesystem): It is the top-level filesystem directory. It must include every file needed to boot the Linux system before another filesystem is mounted. Every other filesystem is mounted on a well-defined and standard mount point because of the root filesystem directories after the system is started.
/boot: It includes the static kernel and bootloader configuration and executable files needed to start a Linux computer.
/bin: This directory includes user executable files.
/dev: It includes the device file for all hardware devices connected to the system. These aren't device drivers; instead, they are files that indicate all devices on the system and provide access to these devices.
/etc: It includes the local system configuration files for the host system.
/lib: It includes shared library files that are needed to start the system.
/home: The home directory storage is available for user files. All users have a subdirectory inside /home.
/mnt: It is a temporary mount point for basic filesystems that can be used at the time when the administrator is working or repairing a filesystem.
/media: A place for mounting external removable media devices like USB thumb drives that might be linked to the host.
/opt: It contains optional files like vendor-supplied application programs that must be placed here.
/root: It's the home directory for a root user. Keep in mind that it's not the '/' (root) file system.
/tmp: It is a temporary directory used by the OS and several programs for storing temporary files. Also, users may temporarily store files here. Remember that files may be removed without prior notice at any time in this directory.
/sbin: These are system binary files. They are executables utilized for system administration.
/usr: They are read-only and shareable files, including executable libraries and binaries, man files, and several documentation types.
/var: Here, variable data files are saved. It can contain things such as MySQL, log files, other database files, email inboxes, web server data files, and much more.

Some Important symbols and their meanings:

~   home
$   normal user login
#    root user login
