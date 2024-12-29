#Remove Advancement
advancement revoke @s only dynamis:weapon/aegis_of_wisdom/block

#Deal Fire Damage
execute positioned ^ ^ ^1 positioned ~ ~1 ~ as @n[type=!#dynamis:nalive,predicate=!dynamis:aegis_of_wisdom/hold_either,distance=..2] run function dynamis:weapon/aegis_of_wisdom/1_dmg

#Particle
execute positioned ^ ^ ^1 run particle flame ~ ~1 ~ 0.35 0.35 0.35 0.001 12 normal

#Playsound
playsound item.firecharge.use master @a[distance=..32] ^ ^0.75 ^1 0.75 1 0.75