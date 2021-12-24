#!/usr/bin/env bash
echo ˜Adicionar usuario˜
#zenity --info --title="Mensagem shell" --text="O script foi executado"
dados=$(zenity --forms --separator=',' --title="cadastro de novo usuario" --add-entry="username" --add-password="password" --ok-label="cadastrar")
name=$(cut -d ',' -f 1 <<< "$dados")
pass=$(cut -d ',' -f 2 <<< "$dados")
echo $name;
echo $pass;