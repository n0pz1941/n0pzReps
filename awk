SORT
Seprador -t ":"
May26 12:05:15.023 xxxx yyyyyyy:ssssssssssssssssssssssssssssssssssss u:bbbbbbbb g_ex:5ms t_bvn:0ms ref:5ms cmd_t: 39 ttt_n: 39 fed_n: 39
--------|--|-------------------|--------------------------------------|-------------|---------|-------|---------|---------|---------|----
    1     2          3                              4                        5           6        7        8          9        10     11
	
sort -n sortear de forma numerica
sort -k columna
	
grep "algo" deunlog.log      | awk '/May29 14:00/,/May29 14:30/' | awk '{print $1,$2,$8,$9,$11}'| awk -F ":" '{if ($6  > 50 ){print $1,$2,$3,$4,$5,$6}}'|sort  -n -k10
-grep de algo a deunlog.log--|---Rango de fechas---------------  |------sacas del log cols----->|filtras de la sexta esta despues de : y imprimes cols-->|--sorteas----
grep "algo" deunlog.log      | awk '/Jun02 16:00/,/Jun02 16:30/' | awk '{print $1,$2,$8,$9,$11}'| awk -v OFS=":" -F ":" '{if ($6  > 50 ){print $1,$2,$3,$4,$5,$6}}'|sort  -n -k10
awk -F ":" //haces un filtro nuevo despues de 2 púntos  
awk -F ":" '{if ($6  > 100 ) ejemplo del filtro despues de los ":" cuando cmds = 6
May28 12:17:07.198 ID:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Usr:xxxxxxxx xxxx:1
--1-----|-2|-----3---|-------------4--------------------------|----5--------|6

Extracting a substring

#grep "Cmds" deunlog.log | grep $month | grep $hour |awk '{print $1,substr($1,0,length($2)-4),$8,$9,$11}'

One method uses the awk function substr($s$,$c$,$n$). This returns the substring from 
string $s$ starting from character position $c$ up to a maximum length of $n$ characters.
 If $n$ is not supplied, the rest of the string from $c$ is returned. Let's see it in action.
 find /var/zapplets/$hostName -name dsiBroker.log | awk -v OFS="/" -F "/" '{print $1,$2,$3,$4,$5,$6,$7,$8}'

 
 echo "$generic" | grep "$criteria" | awk -v columnA="$column" -v sortOption="$sortCriteria" '{ if( $columnA > sortOption ) {print $0}}'|
start="$(date -d "-30 minutes" +'%b%d %H:%M:')"

 end="$(date  +'%b%d %H:%M:')"

 awk '/$A/,/$B/' deunlog.log
 
 
 one line for
 
 sed 's,^.*T:At,,g'
 
  du -h /var/ | sort -h
 
 ^.* = cualquier cantidad de caracteres desde el inicio hasta encontrar T:At
// = la cadena que hace match es sustituida por la cadena vacía
g = hace que busque el patrón más de una vez en cada línea pero es inutil pues solo se tiene un inicio de línea
