#!/bin/bash

set -x
set -e
set -u
set -o pipefail

lecture=$1

HOME=/Users/ahmed/Projects/AUC-Fundamentals-of-Data-Science-II-Spring-2023/
cd $HOME/notebooks/

jupyter nbconvert $lecture.ipynb --TagRemovePreprocessor.remove_input_tags "hide_code" --to slides --stdout > $lecture.html
mv $lecture.html $HOME/docs/

jupyter nbconvert $lecture.ipynb --TagRemovePreprocessor.remove_input_tags "hide_code" --to pdf
mv $lecture.pdf $HOME/pdfs/

cd $HOME
git add --all
git commit -m "Updated $lecture"
git push
