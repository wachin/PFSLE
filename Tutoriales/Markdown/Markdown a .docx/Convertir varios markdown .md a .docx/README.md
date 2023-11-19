Si para:

Markdown a html

    for i in *.md ; do echo "$i" && pandoc -s $i -o $i.html ; done


entonces:

Markdown a docx

    for i in *.md ; do echo "$i" && pandoc -s $i -o $i.docx ; done



In order to convert your Markdown document to DOCX, use the tool pandoc [3]. Pandoc is a Haskell library, and describes itself as "the universal document converter", or the "Swiss army knife for document conversions". It is available for a variety of platforms such as Linux, Microsoft Windows, Mac OS X, and BSD. Pandoc is commonly included as a package for Linux distributions like Debian GNU/Linux, Ubuntu, and CentOS.

A simple call for a conversion is as follows:

    pandoc -o test.docx test.md

The first parameter `-o` refers to the output file, followed by the name of the file (`test.docx`). The file extension helps pandoc to identify the desired output format. The second parameter names the input file --- in our case it is simply `test.md`.


Experimento de Wachín:

Entonces sería

md a docx

    for i in *.md; do pandoc -o "$i" "${i%.*}.docx"; done


