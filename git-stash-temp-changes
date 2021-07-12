#stash temp changes

# stash untracked files.
git stash save --include-untracked

#Git stash with message
git stash save “Your stash message”.


git stash
git stash list
git stash show stash@{0}
git stash show -p


##Creating a Branch from a Stash
# git stash branch <name> stash@{0}

#takes the top most stash in the stack and applies it to the repo
git stash apply stash@{0}

#takes the top most stash in the stack and applies it to the branch that you are on
git stash pop
#or a specific one
git stash pop stash@{0}


#git stash apply is similar to pop, but the difference is:
git stash pop – throws away the stash entry from the stash-list after ‘applying it’, whereas
git stash apply – keeps it in the stash-list even after applying it, for later reuse.
