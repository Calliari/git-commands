# Check what is changed before 'git commit' CMD
git diff

# After 'git add' & 'git commit' CDM
git diff --cached

# After 'git add' & 'git commit' , comparing branches
git diff HEAD^ HEAD
git diff ..master    # compare current branch with 'master'
git diff dev..master # compare 'dev' with 'master'
