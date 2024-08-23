

Estoy usando en linux en la terminal el administrador de archivos nnn y quiero ejecute unos archivos .sh los cuales son unos scripts que tengo, para ejecutarlos hago lo siguiente en nnn me pongo encima del script.sh y aplasto Ctrl + O y me pregunta: "open with" y yo escribo: "bash" y doy enter y me pregunta: "c" li "g"ui? y le pongo c y se ejecuta allí. Pero yo quiero que directamente al yo dar enter en nnn encima del archivo script.sh se ejecute con bash



Para que `nnn` ejecute automáticamente tus scripts `.sh` con `bash` al presionar Enter, puedes configurar un atajo de acción en el archivo de configuración de `nnn`. los siguientes son los pasos:

1. **Crear o editar el archivo de configuración de nnn**: Si no tienes un archivo de configuración personalizado para `nnn`, créalo en tu directorio home:

   ```bash
   nano ~/.config/nnn/plugins/exec-on-enter.sh
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
   chmod +x ~/.config/nnn/plugins/exec-on-enter.sh
   ```

4. **Configurar `nnn` para usar el script**:

   Ahora edita o crea el archivo `~/.config/nnn/nnnrc` y añade la siguiente línea:

   ```bash
   export NNN_PLUG='x:exec-on-enter.sh'
   ```

   Esto asigna el atajo `x` para ejecutar el script que acabas de crear.

5. **Usar la nueva configuración**: Ahora, cuando estés en `nnn` y te posiciones sobre un script `.sh`, simplemente presiona `x`, y el script se ejecutará automáticamente con `bash`.

Si prefieres que se ejecute directamente al presionar Enter, tendrías que mapear el comportamiento de Enter, lo cual podría afectar otras funciones de `nnn`. Sin embargo, con este método de atajo puedes lograrlo con una sola tecla.
