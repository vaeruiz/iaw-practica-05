# Práctica IAW 5_balanceador

## Creando la máquina balanceadora

Hacemos una máquina Ubuntu server con los puertos HTTP (80) y HTTPS (443) con los campos de subred 0.0.0.0/0, ::/0. 

## Configurando la máquina balanceadora

Con la instancia creada y arrancada, nos conectamos a ella y descargamos el repositorio de Github.

>git clone https://github.com/vaeruiz/iaw-practica-05.git

Cuando se haya descargado el directorio movemos el script de instalación al directorio de ubuntu:

>mv iaw-practica-05/balanceador.sh /home/ubuntu/

Añadimos el permiso de ejecución al script:

>sudo chmod +x balanceador.sh

Antes de ejecutar el script tenemos que entrar en él con un editor de texto y añadir en las variables IP_PRIVADA_FRONT1 y IP_PRIVADA_FRONT2 las direcciones IP privadas de las máquinas front_end.

Después de eso ejecutamos el script:

>sudo ./balanceador.sh

Cuando el script se haya ejecutado tendremos la máquina lista y configurada para utilizarla de balanceador.
