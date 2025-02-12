#!/bin/bash
for user in /home/*; do
  username=$(basename "$user")
  sudo usermod -aG docker "$username"
done
