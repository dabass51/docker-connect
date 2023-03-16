# docker-connect
The Docker container selection tool is a shell script that lists all running Docker for easy connecting.

Save this script and make it executable with the command `chmod +x docker-connect.sh`. Then, run the script with the command ./docker-connect.sh to list all running Docker containers and connect to the one of your choice.

To make this script globally accessible from any directory, you can add the script to a directory in your system's PATH. Here's an example:
Create a directory called bin in your home directory if it doesn't already exist:
`mkdir ~/bin`

Move the docker-connect.sh script to this directory:
`mv docker-connect.sh ~/bin/`

Add the bin directory to your system's PATH by adding the following line to your shell's configuration file (e.g. ~/.bashrc for Bash):export 
`PATH="$HOME/bin:$PATH"`

This line adds the ~/bin directory to the beginning of the PATH, so any scripts or executables in this directory will be found before those in other directories.

Reload your shell configuration file to apply the changes:
`source ~/.bashrc`
