# source: https://www.atlassian.com/git/tutorials/undoing-changes/git-clean
read -p "Branch you will move to: " branch_name
read -p "Number backward step: " backward_step
git checkout $branch_name
git reset HEAD~$backward_step
read -n 1 -p "Will undo change? [Y/n]: " undo_change
if [ "$undo_change" != "${undo_change#[Yy]}" ] ;then
    bash ./undo-change.sh
fi
echo -e "\nMove successfully!"