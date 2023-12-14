Resume/CV
=========

Latex Resume with a script file to easily convert it into Unicode-Text Format

* [PDF](http://vellvisher.github.io/resume/doc/Resume_VaarnanDrolia.pdf)
* [Text](http://github.com/vellvisher/resume/raw/master/Resume_VaarnanDrolia.txt)
* [Blog Entry](http://vaarnan.com/pumpin-my-resume-geek-style.html)

## Setup

## Basic Tex

1. Install [Basic Tex](https://www.tug.org/mactex/morepackages.html).
1. Setup the `moderncv package`
   1. `tlmgr init-usertree --usertree $HOME/texmf`
   1. `tlmgr install moderncv`
   1. Contine adding more packages that fail
   1. `pplr7t` -> `tlmgr install palatino`
   1. `zplmr7` -> `tlmgr install mathpazo`


### Deprecated workflow (uses over 14.6GB)

`brew install --cask mactex`

## Updating

```
make
cp Resume.pdf Resume_VaarnanDrolia.pdf /tmp
git checkout gh-pages
cp /tmp/Resume.pdf doc/
cp /tmp/Resume_VaarnanDrolia.pdf doc/
git add doc/Resume.pdf doc/Resume_VaarnanDrolia.pdf
git commit -m $MESSAGE
git push
git checkout master
```

## TODO

+ [ ] Link color is broken
+ [ ] Need to remove things > 10y
+ [ ] Add in more citizenship stuff
