cd $(dirname $0)

sudo -v
caffeinate &

# Install Xcode Command Line Tools.
if ! xcode-select --print-path &> /dev/null; then
  xcode-select --install &> /dev/null
  until xcode-select --print-path &> /dev/null; do
    sleep 5
  done
fi;

# Install Homebrew.
yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Oh My Zsh.
yes | sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

mkdir -p ~/Workspace/fs

git clone https://github.com/trif0lium/setup.git ~/Workspace/.dot

cd ~/Workspace/.dot && sh ./init.sh

killall caffeinate
