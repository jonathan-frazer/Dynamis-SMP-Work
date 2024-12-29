#Deal Fire Damage
damage @s 3.0 on_fire
data modify entity @s Fire set value 60s

#Fire
execute at @s[type=player] run setblock ~ ~ ~ fire