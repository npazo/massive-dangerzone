# Has a feature branch ever been merged
git log feature_branch master --oneline --date-order --merges --reverse -1

# create new branch and switch to it
git checkout -b newbranch

# stages modified and deleted, without new
git add -u

# --cached means show the changes in 
#   the cache/index (i.e. staged changes) against the current HEAD. --staged is a synonym for --cached.
git diff --cached
