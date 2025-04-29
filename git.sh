git add .

echo "Enter a name for the commit: "
read name
git commit -m $name

echo "Specify branch: "
read branch
git push -u $branch
