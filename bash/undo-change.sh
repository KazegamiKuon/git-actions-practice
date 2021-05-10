git reset
git restore .
echo "All unstracked file would be clear"
git clean -n -dn
read -n 1 -p "Will clean all? [Y/n]: " clean_change
if [ "$clean_change" != "${clean_change#[Yy]}" ] ;then
echo -e "\n"
# -f removing unstracked file
# -d include directories
# -x force removal of ignored files
git clean -xf -xd
fi
echo -e "\nUndo successful!"