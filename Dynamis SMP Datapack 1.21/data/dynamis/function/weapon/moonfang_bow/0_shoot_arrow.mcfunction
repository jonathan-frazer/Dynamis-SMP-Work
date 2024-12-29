scoreboard players reset @s SRXIIBow

#Increase Critical Accuracy
execute positioned ~ ~1 ~ as @n[type=arrow,distance=..2,nbt={life:0s}] run data merge entity @s {NoGravity:1b,player:1b,crit:1b,PierceLevel:1b,CustomName:'"moonfang_arrow"'}