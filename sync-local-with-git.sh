#!/bin/bash
for d in */ ; do
	rsync -aPv --exclude ".git" "${HOME}/.config/${d}" "$d"
done
