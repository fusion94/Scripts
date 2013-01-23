Scripts
=======

## git-wtf

### Description
git-wtf is a script to display the state of your repository in a readable and easy-to-scan format.

git-wtf tries to ease the task of having many git branches. It's also useful for getting a summary of how tracking branches relate to a remote server.

git-wtf shows you:

* How your branch relates to the remote repo, if it's a tracking branch.
* How your branch relates to non-feature ("version") branches, if it's a feature branch.
* How your branch relates to the feature branches, if it's a version branch.

For each of these relationships, git-wtf displays the commits pending on either side, if any. It displays checkboxes along the side for easy scanning of merged/non-merged branches.

If you're working against a remote repo, git-wtf is best used between a 'git fetch' and a 'git merge' (or 'git pull' if you don't mind the redundant network access).
