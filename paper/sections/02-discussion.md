Discussion
----------

###Git
![](../images/git-logo.png)

Git is an open-source version control system that is used for mainly software development, but it has recently expanded into supporting various types of documents in additional to software files in different languages. It is usually pre-installed on most Mac OSX systems, but Windows machines might have to manually install it. Git allows user to keep track of changes to files and folders, and often times between multiple authors or developers, within a repository. Developers can see all the histories of all the files in the repository as well as the description on each individial change. One advantage of Git over some other version control system is that it saves a copy of the entire repo on the user's machine, so user can work offline and save all changes without needing any network connection. Of course, if one wants other collaborators to receive the changes, one will need to connect to the internet and push the changes onto a git server. 

The first step of using Git is obtain or create a repository. One can either clone an existing repo, or initialize a new one. In this project, I created my own Git repo by using the following commands:

```bash
mkdir stat159-project1
cd stat159-project1
git init
```

One of the best practices is to creating a new branch whenever one is working on something new. Branching effectively copies the current state of the repository and isolates it into a different environment. Usually a repository will have a master branch which is the main branch which everything branches off from. It should have the last working copy of the files before any other developers starts to work on new features and tools. The reasoning behind the separation is so that one can easily roll back to the last working copy without having to scramble to see what changes have been made. All one has to do is delete the current branch he or she has been working on and create a new branch off the master. In this project I did not use any branch because I started from a blank repo, but if one is joining a large repo, it's definitely a must to start a new branch and not change master directly. 

The next step is to make edits on files in the repo. Using one's favorite editor, edit the source code or text description and save the changes. Git will automatically tracks changes, such as new files or modified files. Then one can stage the changes by using the following command:

```bash
git add filename1 filename2 [...]
```

Then one can save all the changes into a commit with a commit message. Commit message should be short and descriptive of what the changes being saved are about. It's a good practice to commit often because they cost next to nothing. Because the commits are going to be part of the history log, which users can use to roll back to a previous state of the repository, it is better to roll back bit by bit rather than rolling back a large chunk of changes. In this project, One can commit staged changes using the following command:

```bash
git commit -m "Descriptive message"
```

The last step of version control is to update the git server with local changes. One will need to *push* all the local changes saved on local disk onto an online git server, where other collaborators could see the changes as well. Origin is usually the default remote name for the online repo, but the name could vary. The following commands allow user to push changes to the master branch (which should only be used after thorough testing) or create a new branch on the remote server using the current branch the user is working on:

```bash
git push origin master 
//or
git push origin branch
```

Collaborators can get the newest changes by *pulling* from the remote repo:

```bash
git pull origin master
```

Below are some useful commands of git:

- **git help**
    - help document
- **git config**
    - configuration
- **git init**
    - initialize a new repo
- **git status**
    - check status of files in the repo
- **git add**
    - stage changes of specific files
- **git commit** 
    - save staged changes into a commit with a message
- **git log**
    - see a history of all changes
- **git diff**
    - see changes between commits or files

###GitHub
![](../images/github-logo.png)

GitHub is a web-based Git repository hosting service. It extends git by providing all the git functionalities as well as adding different new collaboration features. One important feature GitHub provides is the ability to have private repos. Users have the ability to develop privately with others and not have the public know what they're working on. Although that defeats the purpose of having open-source and distributable research, it provides some necessary privacy when the project or research is confidential. GitHub is a very important tool because it brings git's command line interface onto the web, which is significantly more user friendly for non-tech savy individuals. Different collaborators can see changes and differences straight from the web with animations and color syntax. In this project, I used GitHub to clone the project specs and images from Professor's GitHub repo:

```bash
git clone https://github.com/ucb-stat159/stat159-fall-2016.git
```

The cloned folder automatically is a git repo, with all the functionalities described above. The default name for the remote repo it's tracking is *origin*. If, in my case, I wanted to create a blank repo on GitHub and connect my local git repo to that, I can simply add the remote repo onto my current repo with the following commands and the remote repo will keep track on my local repo:

```bash
git remote add origin https://github.com/username/reponame
//edit files
git add file1
git commit -m 'initial commit'
git push origin master
```

The whole point of version control system is to prevent unnecessary back-tracking and allow collaborators to efficiently and quickly store changes without breaking anybody else's code. Git combined with GitHub allow us to do just that by provided a distributed solution, keeping changes both locally and on the network, so everyone can be in-sync in an organized way. Remember to do changes in small bits and commit often to away disastrous roll-backs if something goes wrong.

###Markdown
![](../images/markdown-logo.png)

Markdown is a lightweight markup language with plain text formatting syntax designed to be converted to HTML, PDF, and other formats. It is widely used to create readme files and provide rich text in a plain text editor. In this project, all the documents are written in Markdown, including the README file. Markdown is extremely simple and fast, so writers can format a document with far less time that writing in other syntax. One major advantage of using Markdown is the portability of the file, as writer can exit the file in any text editor in any system. There is no need to compress and archive because the size of the file is the smallest you could get. Below are some of the most important features within the Markdown language:

**Quick Guide**:

- Header
    
  
| Header        | `##header`         |
| _word in italics_ | `*italic*`  |
| **word in bold** | `**bold**`     |
| web links for urls [Google](http://www.google.com)| `[Google](http://www.google.com)`|
| horizontal rules | `***`|
| block quotes | `> block quotes`|
| list          | `1. List 1`|
|unordered list| `-`|
|coding syntax|````python ...````|
|line break| <Enter>|

###bash

###Pandoc
![](../images/pandoc-logo.png)

###Makefile

