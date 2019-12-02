Resume/CV
=========

Latex Resume with a script file to easily convert it into Unicode-Text Format

* [PDF](http://vellvisher.github.io/resume/doc/Resume_VaarnanDrolia.pdf)
* [Text](http://github.com/vellvisher/resume/raw/master/Resume_VaarnanDrolia.txt)
* [Blog Entry](http://vaarnan.com/pumpin-my-resume-geek-style.html)

## Setup

`brew cask install mactex`

## Updating

```
make
cp *.pdf /tmp
git checkout gh-pages
cp Resume.pdf doc/
cp Resume_VaarnanDrolia.pdf doc/
git checkout master
```
