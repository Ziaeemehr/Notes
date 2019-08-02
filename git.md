Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2016-01-27T21:01:35+03:30

====== git ======
Created چهارشنبه 27 ژانویه 2016

Set up your local directory
Set up Git on your machine if you haven't already.
mkdir [[/path/to/your/project]]
cd [[/path/to/your/project]]
git init
git remote add origin https://ziaeemehr@bitbucket.org/ziaeemehr/numerical_alalysis.git

Create your first file, commit, and push

echo "Abolfazl Ziaeemehr" >> contributors.txt
git add contributors.txtgit 
commit -m 'Initial commit with contributors'
git push -u origin master


== I have an existing project ==
cd [[/path/to/my/repo]]
git remote add origin https://ziaeemehr@bitbucket.org/ziaeemehr/numerical_alalysis.gitgit 
push -u origin --all        # pushes up the repo and its refs for the first timegit 
push -u origin --tags     # pushes up any tags




=== new project gitlab ===

**Command line instructions**
Git global setup

git config --global user.name "Abolfazl Ziaeemehr"
git config --global user.email "a.ziaeemehr@gmail.com"

**Create a new repository**

git clone git@gitlab.com:a.ziaeemehr/test1.git
cd test1
touch README.md
git add README.md
git commit -m "add README"
git push -u origin master

== Existing folder ==

cd existing_folder
git init
git remote add origin git@gitlab.com:a.ziaeemehr/test1.git
git add .
git commit
git push -u origin master

Existing Git repository

cd existing_repo
git remote add origin git@gitlab.com:a.ziaeemehr/test1.git
git push -u origin --all
git push -u origin --tags



==== Branches ====

git branch 			# see where we are
git branch -a

git branch dev1 		# create new branch

git checkout  dev1		# switch to branch

to merge my changes into another branch:
git checkout master 	# first see the master
git merge dev1


-  to remove a file completely from your repository's history:

git filter-branch --force --index-filter 'git rm --cached --ignore-unmatch functional_network/Wilson/human/data/png/movie.gif' --prune-empty --tag-name-filter cat -- --all






<!-- github balanced_network -->

echo "# balanced_network" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:Ziaeemehr/balanced_network.git
git push -u origin master
