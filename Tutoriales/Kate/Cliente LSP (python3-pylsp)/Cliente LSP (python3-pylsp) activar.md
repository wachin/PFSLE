
# Habilitar formato automático o autocompletado con Cliente LSP (python3-pylsp) en Kate ("Esquema de Símbolos" python y otros lenguajes)




Instalar:

```
sudo apt install python3-pylsp
```

**Nota:** Este paquete instala: python3-docstring-to-markdown y ese paquete en synaptic tiene el enlace: https://github.com/python-lsp/docstring-to-markdown Además este paquete sugiere otros paquetes

Para activar el plugin en Kate ir a y marcar:

Preferencias > Configurar Kate >  Complementos > (*) Cliente LSP

Al hacer esto en el panel izquierdo aparecerá un icono que al pasar encima el cursor dice:

Esquema de Simbolos


- - - - - - -


¿Cómo habilitar el cliente LSP de Kate para HTML y PHP?
Pregunta
Hola, estoy intentando dejar de lado VS Code y pasarme a Kate para mis 

necesidades de codificación (HTML/PHP)
 funciones como el 

formato automático o el 

autocompletado cuando estoy escribiendo. 

Descubrí recientemente que puedo activar módulos adicionales en las preferencias para ampliar sus capacidades, y no puedo hacerlo después de 

habilitar el cliente LSP.


¿Cuál es la forma correcta de instalar y utilizar esta función para HTML y PHP?






Editado 

```
kate ~/.config/kate/lspclient/settings.json
```

siguiendo este ejemplo

 





de la siguiente entrada copié el contenido 

https://github.com/KDE/kate/blob/master/addons/lspclient/settings.json






cuando usted reinicie el sistema operativo y abra Kate y abra un script en python se verá el esquema del script en la izquierda de Kate


  
**CONSULTAS**

**How to enable Kate's LSP Client for HTML and PHP?**
[https://www.reddit.com/r/kde/comments/y34v70/how_to_enable_kates_lsp_client_for_html_and_php/](https://www.reddit.com/r/kde/comments/y34v70/how_to_enable_kates_lsp_client_for_html_and_php/)

**Kate - LSP Client Status**
[https://kate-editor.org/post/2020/2020-01-01-kate-lsp-client-status/ ](https://kate-editor.org/post/2020/2020-01-01-kate-lsp-client-status/%20)