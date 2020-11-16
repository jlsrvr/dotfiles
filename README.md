# Personal setup:

Follow the le [wagon setup](https://github.com/lewagon/setup/blob/master/macOS.md)

VIM installation:
```VIM
:PlugInstall
```
set VIM as default editor:
```bash
export VISUAL=vim
export EDITOR="$VISUAL"
```
create the temp directory for swap files:
```bash
mkdir ~/.vim/tmp
```
add norminette:
```bash
git clone https://github.com/42Paris/norminette.git ~/.norminette/
cd ~/.norminette/
bundle
```
