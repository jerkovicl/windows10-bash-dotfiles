# Simons's dotfiles

* These are my dotfiles that I use on my windows 10 desktop in the linux subsystem. They should work on Ubunutu 16/14 too.

## Setup
#### installing & using

* fork this to your own acct
* clone that repo
* read and run parts of `setup-a-new-machine.sh`
* read and run `symlink-setup.sh`
  * git config needs attention, read the notes.
* use it. yay!

#### shell

This repo contains config fish


### `.extra` for your private configuration

There will be items that don't belong to be committed to a git repo, because either 1) it shoudn't be the same across your machines or 2) it shouldn't be in a git repo. Kick it off like this:

`touch ~/.extra && $EDITOR $_`

I have some EXPORTS, my PATH construction, and a few aliases for ssh'ing into my servers in there.

I don't know how other folks manage their $PATH, but this is how I do mine:

```shell
PATH=/bin
PATH=$PATH:/sbin
PATH=$PATH:/usr/local/bin
PATH=$PATH:/usr/bin
PATH=$PATH:/usr/sbin
PATH=$PATH:~/.rvm/bin
...
export PATH
```

### Syntax highlighting for these files

If you edit this stuff, install Dotfiles Syntax in Atom/Sublime
