# Check what is changed before 'git commit' CMD
git diff

# After 'git add' & 'git commit' CDM
git diff --cached

# After 'git add' & 'git commit' , comparing branches
git diff HEAD^ HEAD
git diff ..master     # compare current branch with 'master'
git diff dev..master  # compare 'dev' with 'master'
git diff master..     # compare master with current branch (what we have in master is shown as '-' minus)
