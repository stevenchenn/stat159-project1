Abstract
--------

![](../images/stat159-logo.png)

This paper will go through many different types of computational tools
that help make developing new software or research as well as
collaborating much easier and more efficient. The tools that this paper
will discuss are Git, GitHub, pandoc, Markdown, Make, and Vim text
editor. It will dive into the benefits of using these different types of
tools and how to use them to create a reproducible project. After
reading, one can easily follow the same steps and achieve reproducible
results, and hopefully maintain such practice in the long term for
future development and research. Lastly, this paper will conlude with
discussions on other software considerations as well as on reproducible
computational research.

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

![](../images/git-logo.png)

Git is an open-source version control system that is used for mainly
software development, but it has recently expanded into supporting
various types of documents in additional to software files in different
languages. It is usually pre-installed on most Mac OSX systems, but
Windows machines might have to manually install it. Git allows user to
keep track of changes to files and folders, and often times between
multiple authors or developers, within a repository. Developers can see
all the histories of all the files in the repository as well as the
description on each individial change. One advantage of Git over some
other version control system is that it saves a copy of the entire repo
on the user's machine, so user can work offline and save all changes
without needing any network connection. Of course, if one wants other
collaborators to receive the changes, one will need to connect to the
internet and push the changes onto a git server.

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

Below are some useful commands of git:

-   **git help**
    -   help document
-   **git config**
    -   configuration
-   **git init**
    -   initialize a new repo
-   **git status**
    -   check status of files in the repo
-   **git add**
    -   stage changes of specific files
-   **git commit**
    -   save staged changes into a commit with a message
-   **git log**
    -   see a history of all changes
-   **git diff**
    -   see changes between commits or files

### GitHub

![](../images/github-logo.png)

GitHub is a web-based Git repository hosting service. It extends git by
providing all the git functionalities as well as adding different new
collaboration features. One important feature GitHub provides is the
ability to have private repos. Users have the ability to develop
privately with others and not have the public know what they're working
on. Although that defeats the purpose of having open-source and
distributable research, it provides some necessary privacy when the
project or research is confidential. GitHub is a very important tool
because it brings git's command line interface onto the web, which is
significantly more user friendly for non-tech savy individuals.
Different collaborators can see changes and differences straight from
the web with animations and color syntax. In this project, I used GitHub
to clone the project specs and images from Professor's GitHub repo:

``` {.bash}
git clone https://github.com/ucb-stat159/stat159-fall-2016.git
```

The cloned folder automatically is a git repo, with all the
functionalities described above. The default name for the remote repo
it's tracking is *origin*. If, in my case, I wanted to create a blank
repo on GitHub and connect my local git repo to that, I can simply add
the remote repo onto my current repo with the following commands and the
remote repo will keep track on my local repo:

``` {.bash}
git remote add origin https://github.com/username/reponame
//edit files
git add file1
git commit -m 'initial commit'
git push origin master
```

The whole point of version control system is to prevent unnecessary
back-tracking and allow collaborators to efficiently and quickly store
changes without breaking anybody else's code. Git combined with GitHub
allow us to do just that by provided a distributed solution, keeping
changes both locally and on the network, so everyone can be in-sync in
an organized way. Remember to do changes in small bits and commit often
to away disastrous roll-backs if something goes wrong.

### Markdown

![](../images/markdown-logo.png)

Markdown is a lightweight markup language with plain text formatting
syntax designed to be converted to HTML, PDF, and other formats. It is
widely used to create readme files and provide rich text in a plain text
editor. In this project, all the documents are written in Markdown,
including the README file. Markdown is extremely simple and fast, so
writers can format a document with far less time that writing in other
syntax. One major advantage of using Markdown is the portability of the
file, as writer can exit the file in any text editor in any system.
There is no need to compress and archive because the size of the file is
the smallest you could get. Below are some of examples within the
Markdown language:

**Examples**:

-   #### Header

    -   `##header`
-   *Italics*
    -   `*word*`
-   **Bold**
    -   `**word**`
-   [Google](http://www.google.com)
    -   `[Google](http://www.google.com)`
-   List
    -   `-, *, or +`
-   Ordered List
    -   `1. Item`

### bash

Bash is a Unix shell and command language that runs in a text window,
where user types commands that causes action within the user's system.
Users can save bash commands in a file, called script, so all commands
can be run over and over without having to type them out, which is how
some automations are done. Throughout this project, I had to use bash
commands to connect to GitHub, initialize a new repo, save changes, and
convert document types. It is an extremely useful tool to learn.

### Pandoc

![](../images/pandoc-logo.png)

Pandoc is an open-source software document converter, having the ability
to produce documents in a variety of formats from Markdown files.
Writers can even incorporate statistical analysis written in R and
processed with Knitr in the documents. Possible input document types
include (but are not limited to) markdown, reStructuredText, textile,
HTML, DocBook, LaTeX, MediaWiki markup, TWiki markup, OPML, Emacs
Org-Mode, Txt2Tags, Microsoft Word docx, LibreOffice ODT, EPUB, and
Haddock markup. Possible output document types include (but are not
limited to) HTML formats (HTML5, XHTML), Ebooks, XML, docx, OPML, LaTeX,
Markdown, DokuWiki markup, DocBook, PDF, and InDesign ICML. Pandoc is a
command-line tool, making it extremely easy to incorporate into
automated scripts and systems. In this project, I used Pandoc to combine
various Markdown files into a single Markdown file, and then converting
that file to HTML output format. Below is an example on how to achieve
that:

``` {.bash}
//pandoc -o OUTPUT INPUT
pandoc -o paper/paper.md paper/sections/*.md 
pandoc -o paper/paper.html paper/paper.md

//To PDF
pandoc -o paper/paper.pdf --latex-engine=xelatex paper/paper.md
```

### Makefile

Makefile is a file containing a set of directives used with the *make*
build automation tool, usually directs *make* how to compile files and
link the files into a program. For this project, Makefile is used mostly
to automate a set of commands that I need to merge and convert the
documents into a HTML output file. However in the industry, larger
projects will benefit from Makefile significantly by reducing its build
time because *make* keeps tracks of unchanged files and only recompile
changed files. As you can probably tell, if a project takes hours to
compile, a developer doesn't want to recompile the whole project just to
see the effect of changing a few lines. In this project, I made a very
simple Makefile to automate the process:

``` {.bash}
mdfiles = paper/sections/*.md

all: paper.html

paper.html: $(mdfiles)
    pandoc -o paper/paper.md $(mdfiles)
    pandoc -o paper/paper.html paper/paper.md

clean:
    rm paper/*.html
```

I will now explain each line in my Makefile and show how one can use the
same structure for automation.

First we can define variables that we can reference throughout the
Makefile with `$()`:

``` {.bash}
mdfiles = paper/sections/*.md
//reference by $(mdfiles)
```

`all` is a special word that specifies which targets to execute when
*make* is called in the command line. In my case, I only want to create
`paper.html`:

``` {.bash}
all: paper.html
```

Now let's talk about the targets and dependencies. The structure of a
Makefile is pretty standard:

``` {.bash}
target: dependencies
        commands
```

In my example, the target file is paper.html, which is the file I am
trying to create. The dependencies are a list of Markdown files that I
stored into a variable, which are the files that I need in order to
create the output file. My commands are pandoc commands to combine a
list of Markdown files into a single Markdown file, and then converting
that into an HTML file. We could combine the commands into one line by
using ***;*** if one prefers. These commands tell the computer how I
want to generate the output file using the dependencies I have.

``` {.bash}
paper.html: $(mdfiles)
    pandoc -o paper/paper.md $(mdfiles); pandoc -o paper/paper.html paper/paper.md
```

Lastly, I want to add in a *phony* target `clean` to make sure my
folders are cleaned and all unnecessary files are deleted before I
generate a new version of the targets, and in this project, the HTML
file is the only thing that needs to be removed:

``` {.bash}
clean:
    rm paper/*.html
```

As one can see, Makefile is not as daunting as it looks or sounds. Users
just need to understand the structure of the Makefile and repeat it. It
really makes automation a breeze.

Conclusions
-----------

Throughout this paper, I referenced back to the current project to give
concrete examples on how these tools are being used to reach
reproducibility. Although I worked on this project by myself, and for
almost the whole day, I found myself learning about these tools in a
deeper level. I can definitely take what I learned from this project to
expand onto my other projects for other classes where I have to work
with other students. The tools I used in this project includes:

-   Git
    -   version control system to keep track of changes in my project
-   GitHub
    -   online git service to store my project and share my work
-   Markdown
    -   language used to write README and other sections of the final
        document
-   bash
    -   command line shell used for interacting with GitHub, saving
        changes, generating files, etc...
-   Pandoc
    -   convert Markdown files into HTML
-   Makefile
    -   automation of the process to generate the HTML file

All these tools are important in maintaining a scalable and reproducible
project. They are widely used in the industry and in academia, with
bunch of documentations online, which I relied heavily on during this
project. Most of these tools are easy to pick up, except for Git which
took quite a bit of practice to get it right.

The easy parts of the project were to generate single Markdown file
`paper.md` and HTML file `paper.html` because the commands are short and
concise. The challenging part was writing the document itself. Although
I understood how the tools were used, but explaining it in a way such
that non-experienced users would understand took quite a bit of time. I
would save thinking of ways to explain the tools was the most time
consuming part of this project. Throughout the project while I was
writing the document, I could not figure out why the images were not
displaying in my section Markdown files. Later I realized that the path
was incorrect since the Markdown files are inside `sections`. However,
once I converted it to paper.md, the images showed up fine. In
conclusion, having reproducibility will make lives easier in the long
run, and learning tools that can help achieve that will allow one to
gain good practices in maintaining projects and files.
