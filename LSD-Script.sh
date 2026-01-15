#!/bin/bash
#
#
#
echo "Startar LinuxStartupDokumenterare...."
echo ""
OS="$OSTYPE"
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
echo "Ledig Lagringsmängd:"
echo "--===Aplikationer===--"
echo "Aktiva Tjänster:"
ps
echo "--===NätverksInfo===--"
curl ip-api.com | grep "query"