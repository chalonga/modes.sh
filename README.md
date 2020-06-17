# modes.sh
## Manage bash/zsh resource files as separate modes of operation.

Useful for managing aliases and/or environments.  Currently loading another mode once a mode is loaded only resets aliases. This can be used for managing aliases, PATH, misc global vars or whatever into seperate modes or projects.
Super simple, it's just short cut commands for source, cat, vi, the script file.

## Install
Download modes.sh and "source" from whatever .profile or just use as .profile, .bash_profile etc..
```
git clone https://github.com/chalonga/modes.sh modes
cp modes/modes.sh .modes.sh
echo '. ${HOME}/.modes.sh' >> ${HOME}/.bash_profile
```

## Create anaconda mode
```
. modes.sh # or add to .bashrc or .bash_profile
cp .bash_profile .bash_profile.bak
conda init
mv .bash_profile ~/.modes/conda
mv .bash_profile.bak .bash_profile
mode conda
```

### Create or Edit mode "dev"
```
mode dev edit
```
Executes: editor ~/.modes/dev

### Load "dev" mode
```
mode dev
```
Executes: source ~/.modes/dev

### Show "dev" mode 
```
mode dev show
```
Executes: cat file ~/.modes/dev

### Import "dev" mode 
TODO

### Usage 
Help:
```
   On demand source script loader
     Usage  :  mode [modename] [action] [action argument]
     List   :  mode
     Load   :  mode <modename>
     Show   :  mode <modename> show
     Edit   :  mode <modename> edit
     Import :  mode <modename> import <othermode>
     Help   :  mode help
```
