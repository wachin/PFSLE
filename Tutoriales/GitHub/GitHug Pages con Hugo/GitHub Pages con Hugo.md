Vamos a crear tu sitio web con Hugo usando el tema **Arberia** en **GitHub Pages**. Te guiaré paso a paso para que lo puedas hacer desde cero.

### Paso 1: Preparativos Iniciales

Primero, asegúrate de tener las herramientas necesarias instaladas en tu sistema.

#### 1.1. Instalar Hugo en Debian 12 (32 bits)
Ya que Debian no ofrece la última versión de Hugo en los repositorios por ser 32 bits, puedes descargarla directamente desde la página de Hugo.

```
sudo apt install hugo
```

verifica la instalación:

```
hugo version
```

### Paso 2: Crear el Proyecto con Hugo

#### 2.1. Crear un nuevo proyecto de Hugo

1. Crea una nueva carpeta para tu sitio:

   ```bash
   mkdir ~/Dev/wachin.github.io
   cd ~/Dev/wachin.github.io
   ```

2. Inicializa un nuevo sitio de Hugo:

   ```bash
   hugo new site .
   ```

#### 2.2. Instalar el tema "Arberia"

1. Ve a la página del tema **Arberia** en [themes.gohugo.io/arberia](https://themes.gohugo.io/themes/arberia/).
   
2. Instala el tema usando Git:

   ```bash
   git init
   git submodule add https://github.com/antedoro/arberia.git themes/arberia
   ```

3. Luego, configura el tema en el archivo de configuración:

   Edita el archivo `config.toml` y agrega lo siguiente:

   ```toml
   theme = "arberia"
   ```

4. Si no tienes el archivo `config.toml`, puedes crear uno con este contenido básico:

   ```toml
   baseURL = "https://wachin.github.io"
   languageCode = "en-us"
   title = "Mi sitio Hugo"
   theme = "arberia"
   ```

#### 2.3. Crear contenido

Puedes crear contenido para tu sitio con el siguiente comando:

```bash
hugo new posts/primer-post.md
```

Esto creará un archivo Markdown donde podrás agregar tu contenido.

---

### Paso 3: Preparar GitHub Pages

#### 3.1. Crear un nuevo repositorio en GitHub

1. Ve a [GitHub](https://github.com) y crea un nuevo repositorio llamado `mamimeli.github.io`.
   
2. No es necesario agregar un README ni licencia, ya que Hugo generará los archivos.

#### 3.2. Subir el sitio a GitHub

1. Inicializa un repositorio Git en tu carpeta local:

   ```bash
   git init
   git add .
   git commit -m "Primer commit de mi sitio Hugo"
   ```

2. Conecta tu repositorio local con el remoto en GitHub:

   ```bash
   git remote add origin https://github.com/wachin/wachin.github.io.git
   ```

3. Empuja los archivos a GitHub (esto subirá tu sitio estático):


   ```bash
   git push -u origin main
   ```

o:

   ```bash
   git push -u origin master
   ```
   


   Si tienes problemas con el nombre de la rama, usa `master` en lugar de `main`.

#### 3.3. Configurar GitHub Pages

1. Ve a la pestaña **Settings** de tu repositorio en GitHub.
   
2. En la sección **Pages**, selecciona la rama `main` y la carpeta `/ (root)` como fuente de GitHub Pages.

3. Guarda los cambios.

---

### Paso 4: Generar y Subir el Sitio Estático

Cada vez que realices cambios en tu sitio, debes generar los archivos estáticos y subirlos a GitHub.

1. Para generar los archivos estáticos, ejecuta el siguiente comando:

   ```bash
   hugo
   ```

   Esto generará una carpeta `public/` con todos los archivos listos para ser desplegados.

2. Agrega estos archivos al repositorio Git:

   ```bash
   cd public
   git add .
   git commit -m "Actualización del sitio"
   git push origin main
   ```

---

### Paso 5: Acceder a tu Sitio

Después de hacer el push, tu sitio debería estar disponible en:

```
https://mamimeli.github.io
```

---

### Resumen

- Has creado tu sitio Hugo con el tema Arberia.
- Has configurado GitHub Pages para mostrar tu sitio.
- Cada vez que quieras actualizar tu sitio, debes generar los archivos estáticos con `hugo`, y luego hacer `git push` en la carpeta `public/`.

Si tienes alguna duda durante el proceso, no dudes en preguntar. ¡Estoy aquí para ayudarte!
