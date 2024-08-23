Estoy usando en linux en la terminal el administrador de archivos nnn y quiero ejecute unos archivos .sh los cuales son unos scripts que tengo, para ejecutarlos hago lo siguiente en nnn me pongo encima del script.sh y aplasto Ctrl + O y me pregunta: "open with" y yo escribo: "bash" y doy enter y me pregunta: "c" li "g"ui? y le pongo c y se ejecuta allí. Pero yo quiero que directamente al yo dar enter en nnn encima del archivo script.sh se ejecute con bash

Si desea puede instalar todos los plugins con:

```bash
sh -c "$(curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs)"
```

estas instrucciones están en:

https://github.com/jarun/nnn/tree/master/plugins#installation

Ejemplo de plugin

## Plugin para abrir script directamente con bash

Para que `nnn` ejecute automáticamente tus scripts `.sh` con `bash` al presionar Enter, configura un atajo de acción en el archivo de configuración de `nnn`. los siguientes son los pasos:

1. **Crear el archivo de configuración de nnn**: Si no tienes un archivo de configuración personalizado para `nnn`, créalo en tu directorio home:

   ```bash
   nano ~/.config/nnn/plugins/execonenter
   ```

2. **Añadir el script para ejecutar archivos `.sh`**: Copia y pega el siguiente contenido en el archivo:

   ```bash
   #!/bin/bash

   # Si el archivo tiene la extensión .sh, ejecútalo con bash
   if [[ "$1" == *.sh ]]; then
       bash "$1"
   fi
   ```

   Guarda y cierra el archivo.

3. **Dar permisos de ejecución**:

   ```bash
   chmod +x ~/.config/nnn/plugins/execonenter
   ```

4. **Configurar `bash` para usar los plugins**:
En el tutotial en:

https://github.com/jarun/nnn/tree/master/plugins#configuration

pone un ejemplo para habilitar varios scripts:

```
export NNN_PLUG='f:finder;o:fzopen;p:mocq;d:diffs;t:nmount;v:imgview'
```

**Nota**: Si ustedes usan zsh u otro deberán añadirlo a su archivo de configuración.

pero yo no voy a usar todos esos sino solo los siguientes incluyendo el que hemos creado, pongamos en la terminal y ejecutar:

```
export NNN_PLUG='f:finder;o:execonenter;p:launch;v:imgview'
```

y cerrar cualquier instancia de nnn y volver a abrir en una terminal nnn y escribir:

;

en mi caso para hacer eso tengo que presionar:

Shift derecho + ;

entonces deberá aparecer abajo a la izquierda de nnn lo siguiente:

keys: f o p v

esto significa que están habilitadas esas teclas para los plugins:

f finder

o execonenter

p launch

v imgview

5. Añadir permanentemente las configuraciones de los plugins en bash
Debemos de añadir al archivo:

.bashrc

la linea:

export NNN_PLUG='f:finder;o:fzopen;p:mocq;d:diffs;t:nmount;v:imgview'

cerrar sesión y volver a entrar.

6. **Usar nuestro plugin**: Ahora, cuando estés en `nnn` y te posiciones sobre un script `.sh`, simplemente presiona `;` y la tecla `o` y el script se ejecutará automáticamente con `bash`.





