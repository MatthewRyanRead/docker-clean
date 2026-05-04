# stop docker
sudo killall -9 docker

# brew
brew uninstall --cask --force --zap docker
# note: not touching docker-credential-helper, just in case
brew uninstall --force --zap docker docker-buildx docker-completion docker-compose docker-machine
brew cleanup
sudo rm /usr/local/var/homebrew/linked/docker
sudo rm /usr/local/var/homebrew/locks/docker-machine.brewing
sudo rm /usr/local/var/homebrew/locks/docker.brewing
sudo rm -r /usr/local/Caskroom/docker
sudo rm -r /usr/local/Cellar/docker
sudo rm -r /usr/local/Homebrew/Library/Locks/docker.brewing
sudo rm -r /opt/homebrew/Caskroom/docker
sudo rm -r /opt/homebrew/Cellar/docker

# system folders
sudo rm -r /var/lib/docker
sudo rm -r /private/var/lib/docker
sudo rm -r /private/var/run/docker.sock
sudo rm -r /private/var/tmp/com.docker.vmnetd.socket
sudo find /private/var/folders -name com.docker* -exec rm -r {} \;

# /usr/local
sudo rm /usr/local/bin/docker
sudo rm /usr/local/bin/docker-compose
sudo rm /usr/local/bin/docker-machine
sudo rm /usr/local/opt/docker

# Applications and Library
sudo rm -r /Applications/Docker.app
sudo rm -r /Library/LaunchDaemons/com.docker.vmnetd.plist
sudo rm -r /Library/PrivilegedHelperTools/com.docker.vmnetd

# user settings and Library
sudo rm -r ~/.docker
sudo rm -r ~/Library/Application\ Scripts/com.docker.helper
sudo rm -r ~/Library/Caches/com.docker.docker
sudo rm -r ~/Library/Containers/com.docker.docker
sudo rm -r ~/Library/Group\ Containers/group.com.docker
sudo rm -r ~/Library/Preferences/com.docker.docker.plist
