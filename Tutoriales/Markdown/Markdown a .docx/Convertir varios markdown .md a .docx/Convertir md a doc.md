

PARA CONVERTIR UN SOLO ARCHIVO

Markdown a docx

    pandoc -o test.docx test.md

y verifica si es mejor:

To convert a “.md” file to a “.docx” file, run a command in the following format:

    pandoc file.md -f markdown -t docx -s -o file.docx
    
    
Ejemplo:


    
    pandoc -o "02. Es pertinente el Sermón I.A.docx" "02. Es pertinente el Sermón I.A.md"
    
    
CONVERSION EN MASA    
    
Markdown a docx

    for i in *.md ; do echo "$i" && pandoc -s $i -o $i.docx ; done    
    
    
O:

md a docx

    for i in *.md; do pandoc -o "$i" "${i%.*}.docx"; done




    
        pandoc -o test.docx test.md
        

