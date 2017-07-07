shopt -s globstar nullglob
for file in **/*.JPG; do
	git mv -f -v "$file" "${file%.*}.jpg"
done

shopt -s globstar nullglob
for file in **/*.JPG; do
	mv "$file" "${file%.*}.jpg"
done