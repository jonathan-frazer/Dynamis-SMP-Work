#Damage
execute positioned ~ ~0.15 ~ as @e[type=!#dynamis:nalive,distance=..1.5] unless score @s dynPhantomStrike matches 40 run function dynamis:weapon/phobos_wrath/6_phantom_strike_dmg

#Sonic Boom
particle sonic_boom ~ ~1 ~ 0 0 0 0.001 1 force

#Playsound
playsound block.sculk_shrieker.shriek master @a[distance=..32] ~ ~ ~ 0.1 1.15 0.1
playsound entity.lightning_bolt.impact master @a[distance=..32] ~ ~ ~ 0.1 1.15 0.1