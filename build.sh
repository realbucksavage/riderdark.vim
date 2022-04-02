#!/bin/sh

echo "generating vim color scheme..."
jbicls-conv --icls ./riderdark.icls --pack src --target riderdark.vim > ./colors/riderdark.vim
jbicls-conv --icls ./riderdark.icls --pack src --target lightline.vim > ./autoload/lightline/colorscheme/riderdark.vim
