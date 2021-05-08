echo "You want delete branch name:"
read branch_name
git checkout dev
git pull
#delete branch locally
git branch -d $branch_name
#delete branch remotely
git push origin --delete $branch_name