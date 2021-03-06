echo 'export EDITOR=micro' | sudo tee -a /etc/zsh/zprofile

sudo mkdir -p /root/.config/micro

sudo cp -vfR "$HOME/.config/micro/settings.json" "/root/.config/micro/settings.json"

sudo update-alternatives --install /usr/bin/editor editor /home/linuxbrew/.linuxbrew/bin/micro 100

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

sudo apt install autojump -y

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

git clone https://github.com/romkatv/zsh-defer.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-defer

