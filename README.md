# modes.sh
## Manage bash/zsh resource files as separate modes of operation.

Useful for managing aliases.  Currently loading another mode once a mode is loaded only resets aliases.

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
