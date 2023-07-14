if (( $EUID != 0 )); then
    echo -e "\033[38;5;196mYou need to run this script as root!"
    exit
fi

echo "Downloading ..."
curl -sS https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz -o "/tmp/ngrok.tgz"
echo "Extracting ..."
tar -xzf /tmp/ngrok.tgz
echo "Copying ..."
mv ngrok /usr/bin
echo "Making file executable ..."
chmod +x /usr/bin/ngrok
echo "Cleaning ..."
rm -f /tmp/ngrok.tgz
echo -e "\033[38;5;40mInstallation of ngrok completed!"