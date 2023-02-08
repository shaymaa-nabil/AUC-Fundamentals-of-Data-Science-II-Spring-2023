
jupyter nbconvert lecture01.ipynb --TagRemovePreprocessor.remove_input_tags "hide_code" --to slides --stdout > lecture01.html

jupyter nbconvert lecture01.ipynb --TagRemovePreprocessor.remove_input_tags "hide_code" --to pdf

