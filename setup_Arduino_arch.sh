yay -S arduino-cli arduino-ide
echo 'SUBSYSTEM=="tty", ATTRS{idVendor}=="10c4", ATTRS{idProduct}=="ea60", MODE="0666"' >> sudo /etc/udev/rules.d/99-esp8266.rules
sudo udevadm control --reload-rules
sudo udevadm trigger
sudo usermod -aG uucp $USER

echo ""
echo "esp8266 link for arduino-ide:"
echo "https://arduino.esp8266.com/stable/package_esp8266com_index.json"
