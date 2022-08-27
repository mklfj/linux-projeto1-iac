#!/bin/bash

echo "Criando usuarios do sistema..."

useradd -m -c "visitante 10" -s /bin/bash -p $(openssl passwd -5 senha123) guest10
useradd -m -c "visitante 11" -s /bin/bash -p $(openssl passwd -5 senha123) guest11
useradd -m -c "visitante 12" -s /bin/bash -p $(openssl passwd -5 senha123) guest12

echo "Finalizado!"

