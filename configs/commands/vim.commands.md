# Vim cli commands

Save, clear cli output and run file 
```
:w | !cl && cr % 
```
**NOTE**: Depends on `~/.zshenv` containing `clear` and `cargo run` aliases `cl` and `cr` respectively.


Close buffer/file (dont exit vim)
```
:bd
```

Update install plugin 
```
:PlugInstall
```


**d**elete **a** **w**ord  (execute while in normal mode whilst hovering above word)
```
daw
```

switch between panes in vim 
```
[ctrl + w] + {h / j / k / l} 
```
for moving *left*, *down*, *up* and *right* respectively

split window horizontally 
```
[ctrl + w] + s 
```

split window veritcally 
```
[ctrl + w] + v
```


fast file picking, cli and vim 
```
:!fzf
```
Switch tab to right
```
[space_bar] gt 
```
Switch tab to left 
```
[space_bar] gT
```
Will open up the last cloed pane vertically 
```
:vs#
```
open last close file in tab 
```
:tabnew#
```
close current tab
```
:tabc
```
split buffer src/main.rs tab to window horizontally 

```
:sb src/main.rs
```

run a file using the `Makefile` configuration. From within  `Vim` in ** ****view* run <space_bar>xm to execute the make file.


