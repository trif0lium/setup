cd $(dirname $0)

sudo -v

# Install Homebrew.
yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

mkdir -p ~/Workspace/fs

git clone https://github.com/trif0lium/setup.git ~/Workspace/.dot

cd ~/Workspace/.dot && sh ./init-linux.sh
