# Check what is changed before 'git commit' CMD
git diff

# After 'git add' & 'git commit' CDM
git diff --cached

# After 'git add' & 'git commit' , comparing branches
git diff HEAD^ HEAD
git diff ..master     # compare current branch with 'master'
git diff dev..master  # compare 'dev' with 'master'
git diff master..     # compare master with current branch (what we have in master is shown as '-' minus


#Testing the merge on local before merge the pull-request (this doesn't affect the remote)
```
git checkout master
git checkout master -- .
git pull origin master   

# here is the test
git merge --no-commit --no-ff feature/branch-123456

# Here are the files which will be changing with the merge on the remote (but for now its only on the local-machine)
git status 

# Here we can see the lines that will be changed on this file in particular and must match the created pull-request difference that will be merged into the master branch.
git diff --cached test-file.txt  

```

