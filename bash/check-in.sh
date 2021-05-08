echo 'Commit message: '
read mess
git pull
git add .
git commit -m "$mess"
git push
git pull
read -n 1 -p "Checkout to dev branch (y/n)? " answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    git checkout dev
else
    echo "\nCommit done! enjoy"
fi