#!/bin/sh

./gen_index.sh
./gen_research.sh
./gen_publications.sh
./gen_cv.sh

git add *
git commit -m "updated content"
git push

