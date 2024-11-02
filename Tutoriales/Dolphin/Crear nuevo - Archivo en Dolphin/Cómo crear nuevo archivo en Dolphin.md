 

# Cómo se crea un Documento nuevo con clic derecho en Dolphin ejemplo de Markdown .md

Estoy tratando de encontrar en Internet la solución para poder crear un nuevo archivo en Dolphin administrador de archivos y al fin encontré una entrada que me explica cómo hacerlo. En contraste en Ubuntu el administrador de archivos Nautilus tiene fácilmente como añadir con click derecho "Crear nuevos" tipos de archivos porque en el Home hay una carpeta que se llama Plantillas y allí uno puede poner cualquier archivo con la extensión del archivo que uno quiere que aparezca un nuevo archivo en el administrador de archivos Nautilus al darle clic derecho y luego en "Crear nuevo", pero en Dolphin no aparece esa característica, pero sí se puede hacer aunque es más difícil, más complicado pero estas son las instrucciones para hacerlo

## Verificando la estructura KDE para los archivos de "Crear nuevo"
En dolphin habilita el poder ver los archivos ocultos con "Ctrl + H" y si no estas usando un Sistema Operativo Linux basado en KDE, Neon (como yo) no estarán presentes algunas carpetas. Navega hasta:

$HOME/.local/share/

o lo que es lo mismo:

.local/share/

allí crea (si no la hay) la carpeta:

templates

y allí dentro crea la carpeta:

.sources


## Crear las carpetas templates/.source y el archivo.desktop para ejemplo Markdown .md
Los archivos que describen los elementos en tu menú “Crear nuevo” se deben encontrar en:

$HOME/.local/share/templates
$HOME/.local/share/templates/.sources

Para mi necesidad con editor de texto como ejemplo Kate debo crear un nuevo archivo de texto llamado:

MarkdownDocument.desktop

en el directorio $HOME/.local/share/templates y añadir el siguiente contenido:

[Desktop Entry]
Name=Markdown Document...
Name[en_GB]=Markdown Document...
Name[es]=Documento de Markdown...
Comment=New Markdown document:
Comment[en_GB]=New Markdown document:
Comment[es]=Nuevo documento de Markdown:
Type=Link
URL=.source/MarkdownDocument.md
Icon=text-markdown

y guardar y cerrar.

Además con un editor de texto o un editor de Markdown cree un archivo vacío en el directorio $HOME/.local/share/templates/.source y nómbrelo:

MarkdownDocument.md

Eso es todo, y ya podrá ver al dar clic derecho con Dolphin en un lugar vació el menú:

> Crear nuevo > Documento de Markdown...


# CONSULTAS

**Add your own “Create New” options in KDE Dolphin**
Johan Zietsman 2019-10-31
[https://ex-mente.com/em_blog_posts/add-your-own-create-new-options-in-kde-dolphin/](https://ex-mente.com/em_blog_posts/add-your-own-create-new-options-in-kde-dolphin/)