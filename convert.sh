jupyter nbconvert notebooks/*.ipynb --to pdf --output-dir pdfs/
jupyter nbconvert notebooks/*.ipynb --to slides --output-dir slides/


jupyter nbconvert lecture01.ipynb --to slides --stdout  > lecture01.html
