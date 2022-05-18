### Git commands
Install git on the machine is needed.
```
sudo apt install git  # Forked from Debian architecture - Linux
sudo yum install git  # Forked from Red Hat Enterprise - Linux
brew install git      # MacOs 
```

```
# check git is installed and the version it's running 
git --version
```

#### First time using git with terminal "if no config is set, let's got onto first step"
```
# checking if there is any configuration 'global'
git config --global --list

# another place the git configuration can be found for 'global' is:
cat ~/.gitconfig

######### ########## #########

# checking if there is any configuration on the 'local-project'
cd PATH/TO/PROJECT
git config --list

# another place the git configuration can be found for 'local-project' is:
cat PATH/TO/PROJECT/.git/config
```

#### First step for global identity git, all the configuration will be saved on '~/.gitconfig'
```
git config --global user.name 'bob'
git config --global user.email 'bob@example.com'
# Optional set the editor for git 
git config --global core.editor '/usr/bin/vim'
```
##### In case a 'local-project' git config is needed, change the to the project's dir and run the commands:
```
cd PATH/TO/PROJECT
git config user.name 'bob'
git config user.email 'bob@example.com'

# checking the project-local git-config
git config --global user.name
git config --global user.email
```

# git-commands
Some useful commands that I think is very useful

##### Starting a new project with git
```
git init project-name
```
