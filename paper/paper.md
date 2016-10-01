Abstract
--------

![](../images/stat159-logo.png)

This paper will go through many different types of computational tools
that help make developing new software or research as well as
collaborating much easier and more efficient. The tools that this paper
will discuss are Git, GitHub, pandoc, Markdown, Make, and Vim text
editor. It will dive into the pros and cons of using these different
types of tools and how to use them to create a reproducible project.
After reading, one can easily follow the same steps and achieve
reproducible results, and hopefully maintain such practice in the long
term for future development and research. Lastly, this paper will
conlude with discussions on other software considerations as well as on
reproducible computational research.

Introduction
------------

One might ask, what is *reproducibility* and why is it important?
Imagine a researcher has spent tens of hours to write a piece of
computational tool that was vital to his or her research project.
However, the researcher forgets to mark down the steps to obtain the
final result. Not only does the researcher now have to restart from
scratch and rewrite the whole process, but the researcher also has to
remember the correct steps. Having reproducibility in one's research
allows same or different researchers to replicate identical findings
under the same environment, including computer systems, data input, and
parameters. Having the ability to reproduce identical results allows
other researchers to expand on the research in a collaborative manner.
This paper will go through some tools that will help with collaborative
and reproducible research:

-   Git
-   GitHub
-   Markdown
-   bash
-   Pandoc
-   Makefile

Discussion
----------

### Git

![](../images/git-logo.png) Git is an open-source version control system
that is used for mainly software development, but it has recently
expanded into supporting various types of documents in additional to
software files in different languages. It is usually pre-installed on
most Mac OSX systems, but Windows machines might have to manually
install it. Git allows user to keep track of changes to files and
folders, and often times between multiple authors or developers, within
a repository. Developers can see all the histories of all the files in
the repository as well as the description on each individial change. One
advantage of Git over some other version control system is that it saves
a copy of the entire repo on the user's machine, so user can work
offline and save all changes without needing any network connection. Of
course, if one wants other collaborators to receive the changes, one
will need to connect to the internet and push the changes onto a git
server.

The first step of using Git is obtain or create a repository. One can
either clone an existing repo, or initialize a new one. In this project,
I created my own Git repo by using the following commands:

``` {.bash}
mkdir stat159-project1
cd stat159-project1
git init
```

One of the best practices is to creating a new branch whenever one is
working on something new. Branching effectively copies the current state
of the repository and isolates it into a different environment. Usually
a repository will have a master branch which is the main branch which
everything branches off from. It should have the last working copy of
the files before any other developers starts to work on new features and
tools. The reasoning behind the separation is so that one can easily
roll back to the last working copy without having to scramble to see
what changes have been made. All one has to do is delete the current
branch he or she has been working on and create a new branch off the
master. In this project I did not use any branch because I started from
a blank repo, but if one is joining a large repo, it's definitely a must
to start a new branch and not change master directly.

The next step is to make edits on files in the repo. Using one's
favorite editor, edit the source code or text description and save the
changes. Git will automatically tracks changes, such as new files or
modified files. Then one can stage the changes by using the following
command:

``` {.bash}
git add filename1 filename2 [...]
```

Then one can save all the changes into a commit with a commit message.
Commit message should be short and descriptive of what the changes being
saved are about. It's a good practice to commit often because they cost
next to nothing. Because the commits are going to be part of the history
log, which users can use to roll back to a previous state of the
repository, it is better to roll back bit by bit rather than rolling
back a large chunk of changes. In this project, One can commit staged
changes using the following command:

``` {.bash}
git commit -m "Descriptive message"
```

The last step of version control is to update the git server with local
changes. One will need to *push* all the local changes saved on local
disk onto an online git server, where other collaborators could see the
changes as well. Origin is usually the default remote name for the
online repo, but the name could vary. The following commands allow user
to push changes to the master branch (which should only be used after
thorough testing) or create a new branch on the remote server using the
current branch the user is working on:

``` {.bash}
git push origin master 
//or
git push origin branch
```

Collaborators can get the newest changes by *pulling* from the remote
repo:

``` {.bash}
git pull origin master
```

Below are some useful commands of git: - git help - help document - git
config - configuration - git init - initialize a new repo - git status -
check status of files in the repo - git add - stage changes of specific
files - git commit - save staged changes into a commit with a message -
git log - see a history of all changes - git diff - see changes between
commits or files

### GitHub

![](../images/github-logo.png)

### Markdown

![](../images/markdown-logo.png)

### bash

### Pandoc

![](../images/pandoc-logo.png)

### Makefile
