# modes.sh
Manage bash/zsh resource files as separate modes of operation.

Useful for managing aliases.  Currently loading another mode once a mode is loaded only resets aliases.

## Create or Edit mode "dev"
aka: editor ~/.modes/dev
  mode dev edit

## Load "dev" mode
aka: source ~/.modes/dev
  mode dev

## Show "dev" mode 
aka: cat file ~/.modes/dev
  mode dev show

## Import "dev" mode 
TODO

## Usage 

  On demand source script loader
    Usage  :  mode [modename] [action] [action argument]
    List   :  mode
    Load   :  mode <modename>
    Show   :  mode <modename> show
    Edit   :  mode <modename> edit
    Import :  mode <modename> import <othermode>
    Help   :  mode help
