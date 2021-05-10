# source: https://www.atlassian.com/git/tutorials/undoing-changes/git-clean
read -p "Branch you will move to: " branch_name
read -p "Number backward step: " backward_step
git checkout $branch_name
git reset HEAD~$backward_step
read -n 1 -p "Will undo change? [Y/n]: " undo_change
if [ "$undo_change" != "${undo_change#[Yy]}" ] ;then
    git reset
    git restore .
    echo "All unstracked file would be clear"
    git clean -n -dn
    read -n 1 -p "Will clean all? [Y/n]: " clean_change
    if [ "$clean_change" != "${clean_change#[Yy]}" ] ;then
    # -f removing unstracked file
    # -d include directories
    # -x force removal of ignored files
    git clean -xf -xd
    fi
fi
echo -e "\nMove successfully!"