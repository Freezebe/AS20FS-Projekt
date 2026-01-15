#!/bin/bash
#
#Version 0.6
#Skapad av Isac Lagerstöm
echo "Startar LinuxStartupDokumenterare...."
echo ""
OS="$OSTYPE"
if ! command -v bash &> /dev/null; then
    echo "Fel upptäkt! BASH är inte installerat"
    echo "Stänger av skriptet!"
fi

if [[  "$OS" != "linux-gnu"* ]]; then
    echo "Operativsystemet är inte Linux-gnu baserat, avbryter skriptet..."
    exit 
fi

echo "--===DatorInfo===--"
echo "Ditt Operativsystem: $OSTYPE"
echo ""
echo "Din Kernel Config:"  
uname -a
echo ""
echo "Inloggad som"
whoami
echo ""
echo "Total Lagringsmängd"
cat /proc/meminfo | grep "MemTotal:"
echo ""
echo "Ledig Lagringsmängd:"
cat /proc/meminfo | grep "MemAvailable:"
echo "--===Aplikationer===--"
echo "Aktiva Tjänster:"
ps
echo ""
echo "--===NätverksInfo===--"
echo "Din lokala IP address"
ip add show | grep "inet"
echo ""
echo "Din externa IP address"
curl ip-api.com | grep "query"
echo ""
echo "Din(a) MAC-address(er)"
cat /sys/class/net/*/address
echo ""
