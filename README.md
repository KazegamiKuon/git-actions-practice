# Git Actions Practice

Bla bla, Description not ready yet :p

## Something must do first

**HEAD** tag at git branch.

```tag
orgin/HEAD      mean where your reponsitory clone from
```

Run this scrip if you dont have that tag at master branch

```script
git remote set-head origin master
```

**Master branch** should be your default branch.

Usualy, default branch will be **main** and you should rename it.

You rename at github by -> go to your reponsitory -> setting -> Branches -> At default branch, change it to master.

Finna;ly, run this cmd at your local reponsitory

```script
git branch -m master main
git fetch origin
git branch -u origin/main main
git remote set-head origin -a
```

## Check-in/ submit/ commit change

To do that, run file bash **check-in.sh** in bash folder

```script
bash ./bash/check-in.sh
```

## Undoing Commits & Changes

Some helpful script:

| Command | Scope | Common use cases |
| --- | --- | --- |
| git reset | Commit-level | Discard commits in a private branch or throw away uncommited changes |
| git reset | File-level | Unstage a file |
| git checkout | Commit-level | Switch between branches or inspect old snapshots |
| git checkout "commit ID" |   Commit-level  | change head to old commit and you can do somthing at it |
| git checkout | File-level | Discard changes in the working directory |
| git revert | Commit-level | Undo commits in a public branch |
| git revert | File-level | (N/A) |
| git log --branches=* | | View all commits across all branches. |
| git branch -a | | Return a list of all known |
| git log --oneline | | viewing an old revision |
| git revert HEAD | | create a new commiy with the inverse of the last. |

## some test readme

player 2change somethiong

let change something and merge

ksjzCbjkasb
