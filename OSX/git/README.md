Scripts
=======

## gh-init

### Description

Simple GitHub initialization script. The first step is creating the repository at GitHub. Once created at GitHub, run the script, giving it the name of the repository and the type of License to use.

`./gh-init.sh test Mozilla`

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

## git-rank-contributors

### Description
git-rank-contributors is a trivial script that paws through your logs and ranks all the contributors by the size of their diffs. As always, bigger is better!

If you use -v, you'll get the raw diff sizes.

If you use -o, you'll get high-tech email obfuscation.

Output with just -o may be suitable for piping into a CREDITS file. It probably will require some editing in case people submit from more than one email address, though.

This is similar to git shortlog -s -n --no-merges, but counts diff size rather than number of commits.

## git-publish-branch

### Description
git-publish-branch is a simple script to ease the unnecessarily complex task of "publishing" a branch, i.e., taking a local branch, creating a reference to it on a remote repo, and setting up the local branch to track the remote one, all in one go.

You give it a branch name, and that branch is published in your remote repository. That's it. If you use -d, it will delete the remote reference.

Useful if you publish your topic branches to the outside world.

## Credits

git-wtf, git-rank-contributors and git-publish-branch were done by William Morgan and the following honorable contributors:

* David Soria Parra <dsp@...>
* Wade Simmons <wsimmons@...>
* Jeff Balogh <its.jeff.balogh@...>
* Jordi Bunster <jordi@...>

