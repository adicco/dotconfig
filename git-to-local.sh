#/bin/bash
for d in */ ; do
	rsync -aPv "$d" "${HOME}/.config/${d}"
done

cp i3-custom-lock "${HOME}/.config/"
cp bg*png "${HOME}/.config/"

