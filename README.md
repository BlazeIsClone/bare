## WSL 2 Setup & Configuration

Install Windows Subsystem for Linux Version 2 from powershell

```powershell
wsl --install
wsl --list --verbose
```

Install Linux distro

```powershell
wsl --install -d ubuntu
```

---


## Cloning the bare repository

Install GIT

```bash
sudo apt-get install git
```

Setup Credentials

```bash
echo 'https://${USER}:${TOKEN}@github.com' > ~/.git-credentials
```
Automated Setup with backup

```bash
git clone --bare https://github.com/BlazeIsClone/dotfiles.git $HOME/.dotfiles
function config {
   /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}
mkdir -p .dotfiles-backup
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .dotfiles-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no
```

## Setup Custom Shell


Install ZSH

```bash
sudo apt-get install zsh
```

Install Oh My Zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```


### Install NeoVim & setup with alias

```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mv ./nvim.appimage ./nvim
sudo mv ./nvim /bin/
```

Install VimPlug - Plugin Manager

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
