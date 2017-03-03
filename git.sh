# Has a feature branch ever been merged
git log feature_branch master --oneline --date-order --merges --reverse -1

# create new branch and switch to it
git checkout -b newbranch
