
## Windows terminal configuration

Custom Color profile

```json
  {
      "name": "Blaze",
      "background": "#000000",
      "black": "#21222C",
      "blue": "#FF5555",
      "brightBlack": "#6272A4",
      "brightBlue": "#D6ACFF",
      "brightCyan": "#FFFFFF",
      "brightGreen": "#69FF94",
      "brightPurple": "#FF6E6E",
      "brightRed": "#FF6E6E",
      "brightWhite": "#F8F8F2",
      "brightYellow": "#BD93F9",
      "cursorColor": "#FFFFFF",
      "cyan": "#8BE9FD",
      "foreground": "#0373FC",
      "green": "#0373FC",
      "purple": "#FF5555",
      "red": "#FF5555",
      "selectionBackground": "#FFFFFF",
      "white": "#F8F8F2",
      "yellow": "#FFFFFF"
   },
```

Defaults

```json
 {
      "acrylicOpacity": 0.69999999999999996,
      "background": "#262626",
      "bellStyle": "none",
      "colorScheme": "Blaze",
      "cursorColor": "#FFFFFF",
      "cursorShape": "filledBox",
      "font":
         {
            "face": "Hack Nerd Font",
            "size": 11
         },
       "foreground": "#00FF2F",
       "padding": "10, 10, 10, 0",
       "scrollbarState": "hidden",
       "startingDirectory": "D:/code",
       "useAcrylic": true
  },

```


## WSL 2 Setup & Configuration

Install Windows Subsystem for Linux Version 2 from powershell

```powershell
wsl --install
install wsl 2
```

Install Linux distro

```powershell
wsl --install -d ubuntu
```

---


## Linux web server configuration

```bash
sudo apt-get update
```

Install HTTP server

```bash
install apache2
```

Configure privileges

```bash
sudo chown -R ${user}:${user}  /var/www/
```

Install current LTS PHP version & dependencies

```bash
sudo apt install php php-cli php-fpm php-json php-common php-mysql php-zip php-gd php-mbstring php-curl php-xml php-pear php-bcmath
```

Check PHP version

```bash
php --version
```

Restart Apache server

```bash
sudo service apache2 restart
```

## Setup Shell


Install ZSH

```bash
sudo apt-get install zsh
```

Install Oh My Zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

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
