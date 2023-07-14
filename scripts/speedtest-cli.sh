if (( $EUID != 0 )); then
    echo -e "\033[38;5;196mYou need to run this script as root!"
    exit
fi

echo "Downloading ..."
curl -sS https://install.speedtest.net/app/cli/ookla-speedtest-1.2.0-linux-x86_64.tgz -o "/tmp/speedtest-cli.tgz"
echo "Extracting ..."
tar -xzf /tmp/speedtest-cli.tgz
echo "Copying ..."
mv speedtest /usr/bin
echo "Making file executable ..."
chmod +x /usr/bin/speedtest
echo "Cleaning ..."
rm -f /tmp/speedtest-cli.tgz
echo -e "\033[38;5;40mInstallation of speedtest-cli completed!"