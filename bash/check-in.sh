echo 'Commit message: '
read mess
git pull
git add .
git commit -m "$mess"
git push
git pull
read -n 1 -p "Is this a good question (y/n)? " answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    git checkout dev
else
    echo "Commit done! enjoy"
fi