ssh-keygen -t rsa -b 4096
echo "Add this key to github account"
cat ~/.ssh/id_rsa.pub
ssh-add -K

echo "Hit any key once you've added the ssh key to github"
read any_key

mkdir ~/Workspace
cd Workspace
git clone git@github.com:leafle/personal_config.git
cd personal_config

cp conf_files/bash/.bash* ~/
cp conf_files/.tmux.conf ~/
cp conf_files/.vimrc ~/
cp conf_files/.ssh/config ~/.ssh/config

source ~/.bash_profile

echo "install homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
