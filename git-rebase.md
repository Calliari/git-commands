##### Practise the git 'rebase' 
#### 1. Creating a new branch from another
`git checkout -b development master # creating 'development' branch from 'master' branch`

#### Checkout to the new branch just created 'development'
`git checkout development`

#### Add/change file contents on the 'development' branch 
`echo "code 2" >> app2.txt`

#### Add and commit the changes
`git add app2.txt; git commit -m "new code changes on the development branch"`
`git push origin development`


#### On the master branch, Add the file to the master
```
git checkout master
echo "code 1" >> app.txt
git add app.txt
git commit -m "changes to the app.txt file"
git push origin master
```

#### Now use the git 'rebase' command
```
git checkout development
git rebase master
# hint: Resolve all conflicts manuall if any
git add .
git commit -m "Get all changes recently added to the master and rebased/refresh the 'development' branch from master, getting changes made in 'app.txt' file"
git rebase --continue


###check the changes before push back to the master branch after the rebase and fix the conflicts
git diff master... -- FILE_1 FILE_2.txt FILE_3.text
Or
git diff master...BRANCH_development -- FILE_1 FILE_2.txt FILE_3.text 


git push origin development # Sometimes needed '--force' flag
```

------------------------------------------

#### If issues arise with a git pull from the main branch because of being behind the feature branch, all it need to do is 
```
git checkout master
git pull origin master
git checkout [development-branch]

git rebase master # from the [development-branch]
# Resolve the conflicts generated

# git add . # (all files that have been resolved from the merge conflicts)

git rebase --continue
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





