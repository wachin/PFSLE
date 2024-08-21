### Proyecto 1 ###
echo "Agregando cambios al stage..."
git add .
echo "Realizando commit..."
git commit -m "Guardar automáticamente el commit P1 $(date)"
echo "Enviando cambios al repositorio remoto..."
git push origin main
echo "Proceso finalizado."
read

