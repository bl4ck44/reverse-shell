# Reverse Shell

<p align="center">
<img src="Logotipo.png">
</p>

Ua reverse shell (o "shell inversa") es una técnica utilizada en ciberseguridad y piratería informática que implica establecer una conexión entre un atacante y una máquina objetivo, permitiendo al atacante ejecutar comandos en la máquina remota de forma remota. Esta técnica es comúnmente utilizada por los hackers para obtener acceso no autorizado a sistemas informáticos y tomar el control de ellos.

## Windows 10

### Requisistos:

* Python3

* Visual Studio Code

Descargar el resporitorio luego ejecutar el archivo **config.bat** para configurar la reverse shell, en windows 10.


### Configuración

Para configuirar la reverse shell para windows debes configurar la IP del atacante en el archivo **shell.py** al igual que debes configurar la IP para linux en el archivo **shell.sh**:

<p align="center">
<img src="./Img/config2.png">
</p>

Luego en nuestra maquina atacante **Linux** usaremos netcat para escuchar la conexión de la reverse shell mediante el puerto 4444.

```nc
nc -lvnp 4444
```