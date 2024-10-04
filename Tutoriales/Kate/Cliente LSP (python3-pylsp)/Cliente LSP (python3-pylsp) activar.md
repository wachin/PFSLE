
# Habilitar formato automático o autocompletado con Cliente LSP (python3-pylsp) en Kate ("Esquema de Símbolos" python y otros lenguajes)

En el editor de texto Kate es posible habilitar funciones como el formato automático o el autocompletado de código al momento de escribir, así como ejemplo en VS Code

## Dependencias
Necesitamos instalar el paquete:

```
sudo apt install python3-pylsp
```

**Nota:** Este paquete instala: python3-docstring-to-markdown y ese paquete en synaptic tiene el enlace: https://github.com/python-lsp/docstring-to-markdown con las instrucciones de instalación.


Además este paquete sugiere otros paquetes

## Activar el Cliente LSP en Kate

Para activar el plugin en Kate ir y marcar en:

Preferencias > Configurar Kate >  Complementos > (*) Cliente LSP

Al hacer esto en el panel izquierdo aparecerá un icono que al pasar encima el cursor dice:

Esquema de Simbolos


## Añadir el código para que funcione
Estoy usando una instalación de Debian que no es KDE, digo pues puede ser que en un Sistema Operativo Linux como KDE, Plasma y otros construidos así ya tengan ese archivo con el código, pero en mi caso está vacío ese archivo, así que debo poner en la terminal:

```
kate ~/.config/kate/lspclient/settings.json
```

dejo abierto ese archivo y de la siguiente dirección copiar todo el contenido (Ctrl + A):

[https://github.com/KDE/kate/blob/master/addons/lspclient/settings.json
](https://github.com/KDE/kate/blob/master/addons/lspclient/settings.json)

**Nota:** Ese archivo contiene las url de las paginas web con las instrucciones para instalar esos lenguajes de programación.

una vez que he copiado el contenido debo pegar el contenido en el archivo que dejamos abierto y guardar y cerrar esa pestaña en Kate

Cuando usted cierre Kate y lo abra otra vez a Kate y abra un script en python se verá el esquema del script en la izquierda de Kate, solo que se demora un poco en activarse, pero solo es de esperar. Además si abra ejemplo un archivo .m markdown se verá a la izquierda abajo un botón en Kate llamado "Salida" que al darle clic está la url donde debemos ir para instalar el lenguaje de programación


  
**CONSULTAS**

**How to enable Kate's LSP Client for HTML and PHP?**
[https://www.reddit.com/r/kde/comments/y34v70/how_to_enable_kates_lsp_client_for_html_and_php/](https://www.reddit.com/r/kde/comments/y34v70/how_to_enable_kates_lsp_client_for_html_and_php/)

**Kate - LSP Client Status**
[https://kate-editor.org/post/2020/2020-01-01-kate-lsp-client-status/ ](https://kate-editor.org/post/2020/2020-01-01-kate-lsp-client-status/%20)