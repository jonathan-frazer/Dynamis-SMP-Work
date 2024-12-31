#Deal Fire Damage
damage @s 1.0 on_fire by @p[advancements={dynamis:weapon/aegis_of_wisdom/block=true}]
data modify entity @s Fire set value 60s

#Fire
execute at @s[type=player] run setblock ~ ~ ~ fire