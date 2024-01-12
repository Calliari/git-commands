https://git-scm.com/docs/git-tag

###### Checkout from the branch (master)
```
git checkout master
```
###### Change the code branch (master) and save it
```
vim FILE_NAME
```
###### git add, commit and push 
```
git add FILE_NAME
git commit -m "update providers to be v 2.68.0"
git push origin master
```

###### git check tags
```
git tag -l
```
##### Create an annotate (-a) tag from the current code on the master branch with a message (-m)
```
git tag -a v0.0.1 -m "Tag version v0.0.1, update providers to be version 2.68.0"
# or
git tag 0.1
```

###### Check the tag committed
```
git show v0.0.1
```

###### Check the tags created
```
git tag
```

###### Push the tag to the repo
```
git push origin v0.0.1 
# or 
git push --follow-tags
# or
git push --tags --force
```

##### Now the code has been pushed to a tag 'v0.0.1' is linked to this master commit

====== New tag with change =================================
###### Create a new branch from tag v1.1
```
git checkout -b newbranch v1.1
```

###### Do some work and commit it
```
vim FILE_NAME
```
###### Create a new tag from your work with the message (Tag version 1.1.1, a bugfix release)
```
git tag -a v1.1.1 -m "Tag version 1.1.1, a bugfix release"
# or
git tag 0.1
```

###### push the tag to remote repo with the changes made
```
git push origin v1.1.1
```
=================================================================
###### delete tag local repo
```
git tag -d v0.0.2
```
###### delete tag remote repo
```
git push -d origin v0.0.2
```
###### delete tag remote repo
```
git push --delete origin v0.0.1
```
