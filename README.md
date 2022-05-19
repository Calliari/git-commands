## Git commands
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

##### Some commands that I think is very useful
```
# clone repos from one to another locally
git clone project-name1 cloned-project-name1
```

##### this is an example '~/.ssh/config' configuration
```
# Make sure the public key is added on the code hosting platform (Bitbucket, GitHub, CodeCommit, Gitlab) 
Host github.com
    Hostname github.com
#    Hostname ssh.github.com # if the router has firewall rules to block default clone command
    User git
    IdentityFile ~/.ssh/id_rsa_github

```

##### Testing and cloning
```
# Test the SSH connection with github 
ssh -T git@github.com   
 
# Clone remote repos
git clone git@github.com:Calliari/git-commands.git      
git clone git@ssh.github.com:Calliari/git-commands.git. # add 'ssh' before '.github.com' if the router has firewall's rules to block cloning remote repos
```

##### Starting a new project with git
```
git init project-name
```


