#!/bin/bash
for user in /home/*; do
  username=$(basename "$user")
  sudo usermod -aG docker "$username" 2>/dev/null
done
