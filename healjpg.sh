shopt -s globstar nullglob
for file in **/slides/*.jpg; do
	mv -f -v "$file" "${file%.*}.JPG"
done

shopt -s globstar nullglob
for file in **/thumbs/*.jpg; do
	mv -f -v "$file" "${file%.*}.JPG"
done

shopt -s globstar nullglob
for file in **/*.JPG; do
	git mv -f -v "$file" "${file%.*}.jpg"
done

git commit -m "healing jpgs"
git push