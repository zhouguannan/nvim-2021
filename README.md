# Neovim Config

## My Neovim Config Written In Lua And VimScripts

## Setup

### 1.Install

```bash
sudo pacman -S neovim lua lazygit
pip install pynvim
```

### 2.Packer

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### 3.Clone

```bash
cd ~/.config/
git clone https://github.com/zhouguannan/nvim-2021
mv nvim-2021 nvim
```

### 4.Install Plugins

```bash
nvim
```

```vim
:PackerInstall
```

