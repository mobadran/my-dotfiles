# Dotfiles Setup

## 1. Install Dependencies

```bash
sudo pacman -S stow
```

## 2. Clone This Repository

```bash
git clone https://github.com/mobadran/my-dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

## 3. Install All Configs

```bash
stow .
```

## 4. Set Up Windsurf Extensions

```bash
chmod +x ~/.dotfiles/scripts/install-windsurf-extensions.sh
~/.dotfiles/scripts/install-windsurf-extensions.sh
```

## 5. Restart Your Terminal

All your configurations should now be active!
