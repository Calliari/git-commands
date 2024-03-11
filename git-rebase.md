##### The git 'rebase' and 'merge' is similar

#### Creating a new branch from another
git checkout -b development master # creating 'development' branch from 'master' branch 

#### Check to the new branch just created 'development'
git checkout development

#### Add/change file contents on the 'development' branch 
echo "code 2" >> app.txt

#### Add and commit the changes
git add app.txt; git commit -m "new code changes on the development branch"

#### Now use the git 'rebase' command
git checkout master
git rebase development

------------------------------------------

#### If issues arise with a git pull from the main branch because of being behind the feature branch, all it need to do is 
```
git checkout master
git pull origin master
git checkout [development-branch]

git rebase master # from the [development-branch]
# Resolve the conflicts generated
git rebase --continue
# git add . # (all files that have been resolved from the merge conflicts)
git push --force origin [development-branch]
# Then it should have all the master commits updated in the [development-branch]
```
------------------------------------------

#### Roll back the rebase in case needed, (after running the rebase commands to get back on how it was before.)
```
# check the reflog
git reflog

# get back to the commit before rebase one (created by the 'git rebase master')
git reset --hard "HEAD@{2}" 
# Or
git reset --hard ORIG_HEAD

# get back to master
git checkout master

# get to the [development-branch], everything should be as it were before the 'git rebase master' command.
git checkout [development-branch]
```





