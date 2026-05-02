#!/bin/bash

echo "===== OS VERSION ====="
cat /etc/os-release | grep -E "^(NAME|VERSION)="
echo ""

echo "===== USERS WITH BASH SHELL ====="
grep "/bash$" /etc/passwd | cut -d: -f1
echo ""
echo "===== OPEN PORTS ====="
ss -tuln | grep LISTEN
