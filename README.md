My personal setup
=================

Files and tools to configure my laptop. (Work in progress)

Git
---

* Run 'apply.sh'
* TODO: Bash prompt showing the current branch in the repo

tmux
----

* Run 'apply.sh'
* You will probably need to run tmux with the '-2' option to use de 256 colors.

Vim
---

* Install Vundle
```
$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

* Run 'apply.sh'
* Install plugins
```
$ vim +PluginInstall +qall
```
