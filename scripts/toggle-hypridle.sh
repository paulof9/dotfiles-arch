#!/bin/bash

# Verifica se o processo 'hypridle' está em execução
if pgrep -x hypridle > /dev/null; then
    # Se estiver rodando, mate o processo
    pkill hypridle
    notify-send "Hypridle Desativado" "O gerenciamento de inatividade está pausado." -u low
else
    # Se não estiver rodando, inicie-o em segundo plano
    hypridle &
    notify-send "Hypridle Ativado" "O gerenciamento de inatividade foi restaurado." -u low
fi