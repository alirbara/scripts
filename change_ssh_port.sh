#!/usr/bin/env bash

main() {
    read -p "Enter the new SSH port: " new_port
    sed -i "s/^#Port.*/Port $new_port/" /etc/ssh/sshd_config
    service sshd restart >> /dev/null
    service ssh restart >> /dev/null
    echo "SSH port changed to $new_port"
}

main
