


# MX Linux 21 da problemas con el Wi-Fi en Dell Inspiron 1750 donde algunas veces se desconecta el Internet

Tengo una Dell Inspiron 1750 donde he instalado MX Linux 21 de 32 bits y siempre en algún momento el Wi-Fi se desconectaba, aquí les dejo dos soluciones, la última es la mejor y la que estoy usando. Todo este tutorial podría servirles a ustedes para solucionar algún problema semejante con algún otro driver de WiFi


# Solución parcial, manual (lo que hacía yo antes)
Lo que había estado haciendo desde cuando uso MX Linux 21 cuando se desconectaba el Wi-Fi es lo siguiente, abría la configuración de la Red:

![](vx_images/523401298826616.png)

y allí para saber cuál es mi controlador de Wi-Fi , me voy al administrador de Redes de MX Linux, en la primer pestaña "**status**" allí veo que el Wireless (que significa "inalámbrico") es:

![](vx_images/82903507615708.png)

como ahora sé que en mi caso en mi Dell Inspiron 1750 el driver es:

lw

en la segunda pestaña clic en ése "**wl**" y luego clic en "**Unload Driver**":


![](vx_images/28215431941459.png)

con eso descargaba el driver (no se refiere a descargar archivos de internet), y luego lo volvía a cargar (y esperando un rato se conectaba a internet):

![](vx_images/127996095889863.png)

y con eso después que se conectaba tenía internet otra vez:

![](vx_images/241684424576505.png)

pero con esta solución igual en algún momento me volvía a quedar sin internet:

![](vx_images/110056823122983.png)

 pues se desconectaba y tenía que repetir el proceso otra vez.
 

# Nueva  solución mejorada, cargar otro driver y bloquear el anterior
Lo siguiente es sólo en mi caso, no se para marca o modelo de laptop.

Yo se que el hardware del controlador del Wi-Fi de mi laptop es Broadcom porque allí mismo dice:

![](vx_images/138870972937327.png)

así que un día me puse a pensar el tratar de usar otro driver y así lo hice. 

Primero hay que bloquear el driver anterior, así:

![](vx_images/336013314901653.png)

y seleccionar el driver:

b43
![](vx_images/276192110523193.png)

y esperar un momento a que automáticamente se conecte:

![](vx_images/45443421649029.png)

y ya hay internet otra vez:

![](vx_images/99183568549569.png)
si desea que se cargue rapido Re-scan:

![](vx_images/5964256751971.png)


## Añadir el modulo del driver al inicio
Si usted como yo tiene una Dell Inspiron 1750 ponga en una terminal para el editor de texto Gedit:

    sudo gedit /etc/modules

allí añada el modulo:

b43

debe quedarle así:

![](vx_images/317444804826616.png)

y guarde y cierre Gedit

**Nota:** Puede usar otro editor de texto, sólo modifique la línea y ponga el suyo.

# Si es curioso (Opcional)
Sólo si es curioso, 












Para ver el driver cargado

    dmesg | grep firmware







Network configuration/Wireless - ArchWiki
https://wiki.archlinux.org/title/Network_configuration/Wireless



