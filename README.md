# RecursiveAndRealtime-Decoding
Recursively (and Realtime too) decoding a non-instantaneous binary code
Henrique Sousa, NºMEC 98324, P4
Grade : 20/20

ESTE FICHEIRO PODE SER USADO CASO HAJAM DÚVIDAS SOBRE A INFORMAÇÃO QUE SE ENCONTRA NUM DETERMINADO FICHEIRO E/OU DIRETORIA

Ficheiros na diretoria A03:
  - Resultados - Diretoria com os ficheiros com informaçao da função recursiva para os números {3..500}
  - A03 - Executável para a função de descodificação recursiva
  - realtime - Executável para recolher as informações do ficheiro C necessárias para extrair para o python
  - A03.c - Programa em C para descodificar recursivamente
  - realtime.c - Programa em C para recolher as informações necessárias para o algoritmo .py
  - realtime.py - Algoritmo em Python para descodificar uma mensagem em tempo real
  - rng.c - gerador de números
  - do_one_realtime.sh - Script Bash para uma iteração de descodificação em tempo real
  - do_all_realtime.sh - Script Bash para efetuar várias iterações da descodificação em tempo real e recolher informações
  - do_all_bash.sh - Script Bash para efetuar varia iterações da descodificação recursiva
  - maxpossibilites.sh - Script bash para criar os ficheiros da diretoria extra
  - mergeData.sh - Script bash para reunir as informações da diretoria "Resultados" num só ficheiro
  - realtimeResults.txt - Ficheiro de Texto com os resultados obtidos na execução de "do_all_realtime.sh" (Descodificação em Tempo Real)
  - results.txt - Ficheiro de Texto resultante da execução do script "mergeData.sh" (Descodificação Recursiva)
  - makefile - Ficheiro para compilar os programas em C

Ficheiros na diretoria A03/extras:
  - maxPos.txt - Número máximo de possibilidades consideradas ao mesmo tempo retiradas do ficheiro "realtimeResults.txt"
  - nS.txt - Número de símbolos considerados retiradas do ficheiro "realtimeResults.txt"
  - realtime.txt - Pseudo Código usado para solucionar a descodificação em tempo real
  
  Ficheiros na diretoria A03/Resultados:
      - Informações obtidas na descodificação recursiva de 003 até 500
