
# Obsidian: Sincronización con GitHub y Uso en Android y Linux

## ¿Qué es Obsidian?
Obsidian puede ser una poderosa base de conocimientos pues uno puede guardar en la carpeta local archivos Markdown de texto con escritos y notas, tutoriales y demás, lo cual puede llegar a funcionar como un "segundo cerebro", permitiendo a los usuarios organizar y gestionar su conocimiento de forma flexible y eficaz. Además, Obsidian está disponible para Android, facilitando su uso en dispositivos móviles.

[Descargar Obsidian para Android](https://play.google.com/store/apps/details?id=md.obsidian)

## Cómo usar Obsidian sincronizado con GitHub
Antes de seguir les explico el porqué de este tutorial, sucede que yo uso Linux Debian de 32 bit y Obsidian para Linux no tiene una versión 32 bit sino sólo de 64 entonces por eso se me ocurrió ver si Obsidian puede usar un repositorio de GitHub pues si fuera así en Android usando Obsidian con un repositorio git (instalado en Termux) podría yo tener los archivos sincronizados en la nube, y luego en Linux de 32 bit con git podría clonar ese repositorio y abrir los archivos .md con algún editor de Markdown como VNote, Ghostwriter, etc, etc que funcionan en Linux de 32 bit, y luego hacer alguna modificación y enviar los cambios a la nube, y luego viceversa sincronizando entre ambos Android y Linuxen  el repositorio para tener sincronizados mis archivos en la nube y en local, y si se puede, es posible

### Paso 1: Sincronización con GitHub en Android

Para configurar Obsidian en Android y sincronizarlo con un repositorio de GitHub que sea compatible con Linux, sigue estos pasos:

1. **Instalar Git en Android (usando Termux)**:
   - Instala Termux, vea el siguiente tutorial [Instalar-git-en-Android-con-Termux ](https://github.com/wachin/Instalar-git-en-Android-con-Termux)

2. **Clonar tu repositorio de GitHub**:
   - Una vez que tenga acceso a su almacenamiento Interno, en Termux, clona tu repositorio de GitHub donde almacenarás tus notas de Obsidian:
     ```bash
     git clone https://github.com/tu-usuario/tu-repositorio
     ```
   - Asegúrate de que el repositorio ya tenga al menos un **push** realizado previamente (es decir, debe tener contenido subido a GitHub).

3. **Configurar Obsidian con el repositorio clonado**:
   - Abre Obsidian en tu dispositivo Android.
   - Durante la configuración inicial o desde la opción de **abrir una carpeta de Obsidian**, selecciona la carpeta local donde se encuentra el repositorio que has clonado.
   - A partir de este momento, cualquier cambio que hagas en Obsidian podrá sincronizarse con GitHub usando `git` en Termux.

### Paso 2: Configuración de Obsidian en Android

1. **Cambiar el idioma a español**:
   - Abre Obsidian.
   - Haz clic en el ícono de un **libro** que se encuentra en la parte superior izquierda.
   - Luego, haz clic en el **ícono de engranaje** para acceder a la configuración.
   - Ve a la sección **General** y cambia el idioma de "English" a **Español**. Después, selecciona **Relaunch** para aplicar los cambios.

2. **Desactivar los "Wikilinks"**:
   - En la misma sección de configuración, selecciona **Archivos y Enlaces**.
   - Desmarca la opción **Usar [[Wikilinks]]** esto es para poder editar los archivos Markdown en Linux con editores como Typora, Ghostwriter, VNote, etc.

3. **Detectar todas las extensiones de archivo (Opcional)**:
   - También en **Archivos y Enlaces**, activa la opción **Detectar todas las extensiones de archivo** si deseas que Obsidian reconozca una mayor variedad de archivos.

---

## Edición de tus notas de Obsidian en Linux

Para editar tus notas en Linux, tienes varias opciones:

### Paso 1: Instalar Obsidian en Linux
Puedes instalar la versión de 64 bits de Obsidian directamente desde su sitio web oficial:
- [Descargar Obsidian para Linux](https://obsidian.md/download)

### Paso 2: Editar tus notas en Linux usando otros editores
Si prefieres editar tus notas de Obsidian utilizando otros editores de Markdown en Linux, ejemplo si usas un Linux de 32 bit pues allí no se puede instalar Obsidian, puedes clonar tu repositorio de GitHub en tu sistema Linux y utilizar uno de los siguientes programas:

- **VNote**: Editor de Markdown con excelente soporte para notas y carpetas.
- **Ghostwriter**: Editor de Markdown minimalista.
- **Typora**: Editor de Markdown que renderiza el formato en tiempo real, etc

Para clonar tu repositorio en Linux, ejecuta:
```bash
git clone https://github.com/tu-usuario/tu-repositorio
```

Una vez clonado, abre los archivos Markdown con el editor que prefieras.

---

## Conclusión

Con esta configuración, puedes tener tus notas de Obsidian sincronizadas entre Android y Linux mediante GitHub. Esto te permite editar en cualquier plataforma y mantener tus cambios siempre actualizados.

