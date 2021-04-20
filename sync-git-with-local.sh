#/bin/bash
for d in */ ; do
	rsync -aPv "$d" "${HOME}/.config/${d}"
done
