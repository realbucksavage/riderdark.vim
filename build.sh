#!/bin/sh

echo "generating vim color scheme..."
jbicls-conv --icls ./riderdark.icls --pack src --target riderdark.vim > ./colors/riderdark.vim