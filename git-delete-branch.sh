Delete the remote branch CMD
# for remote 'TEST-123' branch
# checkot to another branch first i.e: git checkout dev
git push origin :TEST-123  #(delete the remote 'TEST-123' branch)


# for local 'TEST-123' branch
# checkot to another branch first i.e: git checkout dev
git branch -D TEST-123   #(delete the local 'TEST-123' branch)

After that no local branch nor remote branch named 'TEST-123' will be available anymore
