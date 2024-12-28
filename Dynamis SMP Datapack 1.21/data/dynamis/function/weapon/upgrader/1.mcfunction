#Change NBT
data modify entity @s Item.components.minecraft:custom_data.Upgraded set value true
data merge entity @s {Item:{components:{"minecraft:lore":['{"bold":false,"color":"#00F269","italic":false,"text":"Upgraded"}']}}}

#Particle
execute at @s run particle happy_villager ~ ~0.15 ~ 0.15 0.15 0.15 0.001 11 force @a[distance=..32]

#Sound
execute at @s run playsound block.anvil.use master @a[distance=..32] ~ ~ ~ 2 1.3 1.0