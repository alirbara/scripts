#!/usr/bin/env bash

main() {
    read -p "Enter the new SSH port: " new_port
    sed -i "s/^#Port.*/Port $new_port/" /etc/ssh/sshd_config
    service sshd restart
    echo "SSH port changed to $new_port"
}

main
