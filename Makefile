mdfiles = paper/sections/*.md

all: paper.html

paper.html: $(mdfiles)
	pandoc -o paper/paper.md $(mdfiles)
	pandoc -o paper/paper.html paper/paper.md

clean:
	rm paper/*.html
