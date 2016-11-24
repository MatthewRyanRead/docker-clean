# stop docker
sudo ps aux | grep -i docker | grep -v grep | awk '{print $2}' | while read line; do
    sudo kill -9 "$line";
done
# brew
brew uninstall --force docker
brew cask uninstall --force docker
brew cleanup
# system folders
sudo rm -r /var/lib/docker
sudo rm -r /private/var/lib/docker
sudo rm -r /private/var/run/docker.sock
sudo rm -r /private/var/tmp/com.docker.vmnetd.socket
sudo find /private/var/folders -name com.docker* | while read line; do
    sudo rm -r "$line";
done
# /usr/local
sudo rm /usr/local/bin/docker
sudo rm /usr/local/bin/docker-compose
sudo rm /usr/local/bin/docker-machine
sudo rm /usr/local/opt/docker
sudo rm /usr/local/var/homebrew/linked/docker
sudo rm /usr/local/var/homebrew/locks/docker-machine.brewing
sudo rm /usr/local/var/homebrew/locks/docker.brewing
sudo rm -r /usr/local/Caskroom/docker
sudo rm -r /usr/local/Cellar/docker
sudo rm -r /usr/local/Homebrew/Library/Locks/docker.brewing
# Applications and Library
sudo rm -r /Applications/Docker.app
sudo rm -r /Library/LaunchDaemons/com.docker.vmnetd.plist
sudo rm -r /Library/PrivilegedHelperTools/com.docker.vmnetd
# user settings and Library
rm -r ~/.docker
sudo rm -r ~/Library/Application\ Scripts/com.docker.helper
sudo rm -r ~/Library/Caches/com.docker.docker
sudo rm -r ~/Library/Containers/com.docker.docker
sudo rm -r ~/Library/Group\ Containers/group.com.docker
sudo rm -r ~/Library/Preferences/com.docker.docker.plist
