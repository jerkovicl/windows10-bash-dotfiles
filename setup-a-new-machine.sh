# copy paste this file in bit by bit.
# don't run it.
  echo "do not run this script in one go. hit ctrl-c NOW"
  read -n 1

# install all the things
./apt.sh


### install of common things

# github.com/jamiew/git-friendly
# the `push` command which copies the github compare URL to my clipboard is heaven
bash < <( curl https://raw.github.com/jamiew/git-friendly/master/install.sh)

# Type `git open` to open the GitHub page or website for a repository.
sudo npm install -g git-open

# trash as the safe `rm` alternative
sudo npm install --global trash-cli

# diff-so-fancy for git
sudo npm install -g diff-so-fancy

# for server()
sudo npm install -g statik

#### symlinks

# symlinks to link dotfiles into ~/
./symlink-setup.sh

# symlink fish config
ln -s ~/dotfiles/fish/ ~/.config/fish
