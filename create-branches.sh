#!/bin/bash

# Specify the number of branches you want to create
num_branches=115

# Loop to create branches
for ((i=1; i<=num_branches; i++))
do
    branch_name="branch-$i"
    
    # Checkout to the new branch
    git checkout -b $branch_name
    
    # Make changes to the index.html
    echo $branch_name >> "index.html"

    # Commit and push the changes
    git add .
    git commit -m $branch_name
    git push -u origin $branch_name
    # echo "Created branch: $branch_name"
done
