### Add ssh key to github cli

`curl -H "Authorization: token ${GIT_TOKEN}" --data '{"title":"asus-laptop-sway","key":"'"$(cat ~/.ssh/id_ed25519.pub)"'"}' https://api.github.com/user/keys -v`
