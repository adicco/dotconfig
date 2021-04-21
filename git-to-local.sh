#/bin/bash
for d in */ ; do
	rsync -aPv "$d" "${HOME}/.config/${d}"
done

# To do: check if i3lock-color is installed

cp i3-custom-lock "${HOME}/.config/"
cp i3exit "${HOME}/.config/"
cp bg*png "${HOME}/.config/"

