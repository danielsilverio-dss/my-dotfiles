#!/bin/sh
notify-send "integracao-rio" "`curl -I -i -X GET -H "Content-Type:application/json"  'https://rio1746.metasix.solutions/api/mobile/chamado/detalhes/protocolo?protocolo=RIO-19231487-6&isReclamacao=0' | cat -`"
