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
echo "$OSTYPE"
echo ""
echo "--===Aplikationer===--"
echo ""
echo "--===NätverksInfo===--"
curl ip-api.com | grep "query"