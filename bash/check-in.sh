echo 'Commit message: '
read mess
git pull
git add .
git commit -m "$mess"
git push