# add a new user; with a group of the same name (-U) with a specific UID (-u), shell (-s) and home dir (-d)
sudo useradd -U -u 1902 -s /bin/bash -d /var/lib/jenkins [USERNAME]

# add user to group
usermod -a -G {group-name} username

# tar directory
tar -zcvf archive-name.tar.gz directory-name

# untar
tar -zxvf archive-name.tar.gz

# save all added/modified files between the current branch and the main branch. Like a stash but for PRs sort of
git_save {
  tmpDir="./git.diff.files"
  gitRoot=`git rev-parse --show-toplevel`
  mainBranch="develop"
  
  mkdir $tmpDir
  git diff --name-only --diff-filter=AM $mainBranch | while read -r line || [[ -n "$line" ]]; do
   ditto $gitRoot/$line $tmpDir/$line
  done
}

# What Linux distro do I have
cat /etc/issue

# date
DATE=`date +%Y-%m-%d`
