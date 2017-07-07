cd /h/album_plants/
#/h/album_plants/fixjpg.sh
#/h/Plantarium/fixjpg.sh
git add --all *
git commit --file=/e/plants.txt
git reflog expire --expire=now --all
git gc --force --aggressive --prune=now
git repack -a -d
git push --force