# Install NeoVim & setup with alias

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
