#!/bin/bash

# Verifica se o processo 'hypridle' está em execução
if pgrep -x hypridle > /dev/null; then
    # Se estiver rodando, mate o processo
    pkill hypridle
else
    # Se não estiver rodando, inicie-o em segundo plano
    hypridle &
    notify-send "Hypridle Ativado" "Tela não vai apagar mais." -u low
fi