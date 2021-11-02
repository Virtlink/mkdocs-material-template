---
title: "Updating to Latest Template"
---
# Updating to Latest Template
This page describes how to update your documentation to include the latest
changes to the template repository.


## Template Remote
To update to the latest version of the template, first ensure the template
repository is added as a remote for the documentation repository:

```sh
git remote -v

origin      git@github.com:MyUsername/my-docs-repo.git (fetch)
origin      git@github.com:MyUsername/my-docs-repo.git (push)
template    git@github.com:Virtlink/mkdocs-material-template.git (fetch)
template    git@github.com:Virtlink/mkdocs-material-template.git (push)
```

If not, add the template remote repository:

```sh
git add remote template git@github.com:Virtlink/mkdocs-material-template.git
```


## Fetch Latest Changes
Fetch the changes in the template remote:

```sh
git fetch template
```


## Merge Latest Changes
Merge the latest changes from the template's `main` branch into your repository:

```sh
git merge template/main
```

??? tip "Unrelated Histories"
    If you get the error `fatal: refusing to merge unrelated histories`, then
    your documentation repository was never based on the template. However, you
    can force Git to merge the template anyway by using this command:

    ```sh
    git merge template/main --allow-unrelated-histories
    ```


## Fix Any Conflicts, and Commit
Now use the Git command line to fix any merge conflicts, and commit the result.
