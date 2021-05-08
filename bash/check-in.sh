echo 'Commit message: '
read mess
echo $mess
echo 'update branch'
git pull
echo 'add all change'
git add .
echo 'commit'
git commit -m "$mess"
echo 'push'
git push