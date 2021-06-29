# Has a feature branch ever been merged
git log feature_branch master --oneline --date-order --merges --reverse -1

# create new branch and switch to it
git checkout -b newbranch

# stages modified and deleted, without new
git add -u

# --cached means show the changes in 
#   the cache/index (i.e. staged changes) against the current HEAD. --staged is a synonym for --cached.
git diff --cached

# undo all uncommitted changes to HEAD
git reset --hard HEAD

# rollback to a place
# Note: As written in comments below, Using this is dangerous in a collaborative environment: you're rewriting history
git reset --hard <old-commit-id>
git push -f <remote-name> <branch-name>

# .gitconfig

[alias]

  # Checkout a pull request from origin (of a github repository) Ex: `git pr 103`
  pr = !"pr() { git fetch origin pull/$1/head:pr-$1; git checkout pr-$1; }; pr"
