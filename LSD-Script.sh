#!/bin/bash
#
#
#
echo "Startar LinuxStartupDokumenterare...."
echo ""
echo "--===DatorInfo===--"
echo "$OSTYPE"
echo ""
echo "--===Aplikationer===--"
echo ""
echo "--===NätverksInfo===--"
curl ip-api.com | grep "query"