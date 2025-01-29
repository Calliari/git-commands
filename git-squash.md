1. Switch to the branch containing the commits you want to squash
```
git checkout <branch_name>
```

2. Check your Git tree and find the first commit on the branch:
```
git log --graph --oneline --all
```

3. Count the number of commits (starting from 0) on the branch you want to squash from the above command and run the next with it.
The commits are listed from oldest to newest.
Make sure to pick at least one commit before the ones you want to squash.
This means that the first commit cannot be squashed, since every commit you squash needs to have one commit before it.
The interactive rebase mode allows users to perform many different actions on the commit history,
including "**squash**", "**edit**", "**drop**", etc.
Each commit you mark as squash is combined with the one above it.
```
# starting from 0 would be the first 3 commits. 
git rebase -i HEAD~2
```

4. The default message shows up at the top, so if you are happy with it, just uncomment it and save the file or write;
```
This is a combination of squashed commits.
```

5. Check the log commits
```
git log -2
```

6. Push the squashed commits to the remote, may need the "-f" to force the push
```
git push --force-with-lease
```
