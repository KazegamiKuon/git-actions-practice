read -p "Branch you will move to: " branch_name
read -p "Number backward step: " backward_step
git checkout $branch_name git reset HEAD~$backward_step
read -n 1 -p "Will undo change? [Y/n]: " undo_change
if [ "$undo_change" != "${undo_change#[Yy]}" ] ;then
    git reset .
    git restore .
else
    echo -e "\nMove successfully!"
fi