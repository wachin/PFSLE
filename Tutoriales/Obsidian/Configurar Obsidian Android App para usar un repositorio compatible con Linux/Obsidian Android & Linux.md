
# Obsidian: Sincronización con GitHub y Uso en Android y Linux

## ¿Qué es Obsidian?
Obsidian puede ser una poderosa base de conocimientos pues uno puede guardar en la carpeta local archivos Markdown de texto con escritos y notas, tutoriales y demás, lo cual puede llegar a funcionar como un "segundo cerebro", permitiendo a los usuarios organizar y gestionar su conocimiento de forma flexible y eficaz. Además, Obsidian está disponible para Android, facilitando su uso en dispositivos móviles.

[Descargar Obsidian para Android](https://play.google.com/store/apps/details?id=md.obsidian)

[Descargar Obsidian para Windows, Linux, MAC, iOS](https://obsidian.md/download)

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
   - Durante la configuración inicial o desde la opción de **abrir una carpeta de Obsidian**, selecciona la carpeta local donde se encuentra el repositorio que has clonado el cual será usado como lo que Obsidian llama "Vault" (Bóveda).
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

### Opción 1: Instalar Obsidian en Linux
Aunque no es mi objetivo, si tienes un Sistema Operativo Linux de 64 bit puedes instalar la versión de 64 bits de Obsidian directamente desde su sitio web oficial:
- [Descargar Obsidian](https://obsidian.md/download)
Y debes registrarte y acceder en uno de sus planes

### Opción 2: Editar tus notas en Linux usando otros editores
Si prefieres editar tus notas de Obsidian utilizando otros editores de Markdown en Linux, ejemplo si usas un Linux de 32 puedes clonar tu repositorio de GitHub en tu sistema Linux y utilizar uno de los siguientes programas:

- **VNote**: Editor de Markdown con excelente soporte para notas y carpetas [Info aquí](https://facilitarelsoftwarelibre.blogspot.com/search/label/VNote)
- **Ghostwriter**: Editor de Markdown minimalista.[Info](https://facilitarelsoftwarelibre.blogspot.com/search/label/Ghostwriter)
- **Typora**: Editor de Markdown que renderiza el formato en tiempo real [Info](https://facilitarelsoftwarelibre.blogspot.com/search/label/Typora)
- Otros [Info](https://facilitarelsoftwarelibre.blogspot.com/search/label/Markdown)

Para clonar tu repositorio en Linux, ejecuta:
```bash
git clone https://github.com/tu-usuario/tu-repositorio
```

Una vez clonado, abre los archivos Markdown con el editor que prefieras.

---

# Usar Obsidian para editar archivos Markdown en Android
Aunque no se puede usar directamente Obsidian como un editor de archivos Markdown en Android, al menos no en la versión que he instalado en el 2024, es posible copiar el archivo Markdown que uno tenga en el celular en el Almacenamiento Interno y pegarlo a la carpeta que Obsidian usa (Vault = bóveda) para sus archivos, en este caso es el repositorio git, y allí editarlo con Obsidian (al abrir Obsidian lo verá entre los archivos) y luego copiarlo de allí y sobre escribirlo en el lugar donde estaba.


# Tutorial básico sobre cómo comenzar con Obsidian en Android, ideal para organizar notas, ideas, diarios, y más.
El siguiente es un pequeño tutorial para usar Obsidian:
## Crear una carpeta dentro de tu Vault
Para organizar tus notas, puedes crear carpetas. Esto es útil si quieres separar temas, como clases, ideas o tu diario personal.

1. En la vista principal de tu Vault, toca el icono de la carpeta arriba en la barra lateral izquierda.
2. Abajo pulsa en el icono en forma de carpeta que tiene un + en medio. 
3. Escribe un nombre para tu carpeta, por ejemplo, "Diario", "Ideas" o "Clases".
4. Pulsa OK para guardar la carpeta.

### Crear una nota dentro de una carpeta

1. Desde arriba en la barra lateral izquierda, elige la carpeta (en el paso anterior vimos como crear una) donde quieres crear la nota. Pulsala y sueltala y aparecerá un submenú y pulsa en "Nueva nota"
2. Dale un nombre a la nota, por ejemplo, "Clase de hoy" o "Ideas para el proyecto".
3. Ahora puedes empezar a escribir directamente en tu nueva nota.

# Escribir y dar formato a tus notas

Obsidian usa Markdown, un lenguaje sencillo de marcado, para dar formato a las notas. Cuando vas creado una nota en la esquina derecha arriba (al lado de los tres puntitos) se puede intercambiar entre dos modos, veras un icono de un lápiz o un libro abierto, y dándole clic intercambiarás entre uno u otro de esos modos, cuando estés en el modo de edición, arriba de tu teclado del celular aparecerán unos iconos los mismos que servirán para usar algunos formatos básicos como los siguientes que también se pueden escribir manualmente:

Negrita: Escribe **texto en negrita**.

Cursiva: Usa *texto en cursiva*.

Encabezados: Escribe # Encabezado 1, ## Encabezado 2, y así sucesivamente.

Listas:

Para listas con viñetas, usa - Elemento.

Para listas numeradas, usa 1. Elemento.

Enlaces a otras notas: Escribe [[Nombre de la otra nota]] para enlazar directamente otra nota de tu (vault) bóveda.

Y otros más.Tytttt

## Mover notas entre *carpetast*
*t*tt*
1. Desde arriba en la barra lateral izquierda, elige la carpeta donde se encuentra la nota que quieres mover.
2. Mantén presionada la nota que deseas mover.
3. Aparecerá una opción que ttdice "Mover archivo a..". ttTócala y selecciona la carpeta de destino.

## Insertar imágenes en tus notas

Obsidian permite agregar imágenes en las notas, ya sea fotos o capturas de pantalla.

1. Insertar una imagen desde el dispositivo:

Copia la imagen en la carpeta de tu bóveda usando un explorador de archivos de Android.

Luego, dentro de la nota, puedes usar el icono de clip para buscarla e insertarla o tmanualmente usa el siguiente formato para insertar la ttttt: 

~~~~
![](nombre-de-la-imagen.jpg)
~~~~tttttt

Ejemplo una foto con un amigo:

![](20241025-en-la-casa-de-Fulco.jpg)

No estamos usando el siguiente formato de Wikilinks:

~~~~
 ![[nombre-de-la-imagen.jpg]]
~~~~
porque lo he configurado para poder usar el formato que entiende Git en Linux y sus editores de markdown

1. Tomar una foto desde la nota:

No es posible hacerlo directamente desde Obsidian, pero puedes usar la cámara del teléfono y guardar la imagen en la carpeta de tu bóveda. Luego, insértala en la nota como en el paso anterior.

3. Sugerencias para organizar tus notas

Usa etiquetas: En cualquier parte de la nota, escribe #Etiqueta. Esto te permite agrupar notas similares, como #Diario, #Ideas, o #Clases. Para buscarlas por este criterio hágalo desde t5arriba en la barra lateral izquierda, de clic en medio de "Exploradora y me avisas cuando llegues.de archivos" y se abrirá un submenú y de clic en "Etiquetas"

4. Carpetas y subcarpetas: 

Puedes crear subcarpetas dentro de las carpetas principales para organizar mejor la información.

5. Búsqueda: 

Para usar el buscador hágalo desde arriba en la esquina izquierda dando clic en el icono que abre la barra lateral izquierda y de clic en medio del "Explorador de archivos" y se abrirá un submenú y de clic en "Search" para buscar y encontrar rápidamente notas o temas específicos.

### Consejos finales

Aprovecha la interconexión: Al enlazar notas, puedes construir una red de ideas interconectadas.

Organiza tus notas según tus intereses: Puedes crear categorías específicas como "Ideas para libros", "Resúmenes de clase", o "Notas diarias".


## Conclusión

vgvvvg
~~hhh~~hvhvvhhbhv~~~~v~~vhvvvhhvvvvvvhhv~~hhh43