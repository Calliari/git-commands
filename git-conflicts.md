#### Trying to resolve git merge 'conflicts'

##### Method 1, with abort in case thongs go wrong
###### Step 1: Checkout the source branch and merge in the changes from the target branch. Resolve conflicts.
```
git checkout development   # in the branch development
git merge features/task123 # trying to get the code from 'features/task123' branch into 'development' branch 
```

###### Step 2:  Resolve conflicts.
```
==================================================================
CONFLICT (add/add): Merge conflict in test.txt
Auto-merging test.txt
Automatic merge failed; fix conflicts and then commit the result.
==================================================================
```

###### Abort the merge to get back how it was before running '$ git merge features/task123' on the 'development' branch
```
git merge --abort
```
<hr/>

##### Method 2 
You must resolve the conflicts by manually merging master into this branch. After the conflicts are resolved you will be able to merge the pull request.

###### Step 1: Checkout the source branch and merge in the changes from the target branch. Resolve conflicts.
```
git checkout feature/branch-dev
git pull origin master
```

###### Step 2:  Resolve conflicts.
```
==================================================================
CONFLICT (add/add): Merge conflict in test.txt
Auto-merging test.txt
Automatic merge failed; fix conflicts and then commit the result.
==================================================================
```

###### Step 3: After the merge conflicts are resolved, stage the changes accordingly, commit the changes and push.
```
git commit
git push origin HEAD
```

###### Step 4: Merge the updated pull request.
