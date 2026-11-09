
#!/bin/bash

clear

echo "----------------------------------------------"
echo "  __  __   ____    _______   ______    _____   _    _"
echo " |  \/  | |___ \  |__   __| |  ____|  / ____| | |  | |"
echo " | \  / |   __) |    | |    | |__    | |      | |__| |"
echo " | |\/| |  |__ <     | |    |  __|   | |      |  __  |"
echo " | |  | |  ___) |    | |    | |____  | |____  | |  | |"
echo " |_|  |_| |____/     |_|    |______|  \_____| |_|  |_|"
echo "----------------------------------------------"

echo "1. Install LVM Panel"
echo "2. Install HVM Panel"
echo "3. Install MVM Panel"
echo "0. Exit"
echo "----------------------------------------------"

read -rp "Choose an option [0-3]: " choice

case "$choice" in
    1)
        echo "Installing LVM Panel..."
        curl -fsSL https://raw.githubusercontent.com/atifqmi-max/lvm-panel/main/install.sh | sudo bash -s -- --install
        ;;
    2)
        echo "Installing HVM Panel..."
        bash <(curl -fsSL https://raw.githubusercontent.com/hopingboyz/hvm-panel/main/installer.sh)
        ;;
    3)
        echo "Installing MVM Panel..."
        bash <(curl -fsSL https://raw.githubusercontent.com/namoc766-art/Mvm-panel/main/installer.sh)
        ;;
    0)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "Invalid option! Please choose 0, 1, 2, or 3."
        ;;
esac
