#Tp foward
execute positioned ^ ^ ^0.85 if block ^ ^ ^0.1 #dynamis:passable run tp @s ~ ~ ~ ~ ~
execute if block ~ ~-1 ~ #dynamis:passable run tp @s ~ ~-1 ~ ~ ~

#Create Fissures
execute unless entity @n[type=area_effect_cloud,name="abyssalFissure",distance=..0.2] run summon area_effect_cloud ~ ~ ~ {Particle:{type:"dust",color:[0.051,0.000,0.000],scale:1.25},Radius:0.90f,Duration:3000,potion_contents:{custom_effects:[{id:"minecraft:slowness",amplifier:10,duration:20,show_particles:0b,show_icon:0b,ambient:1b},{id:"minecraft:wither",amplifier:10,duration:20,show_particles:0b,show_icon:0b,ambient:1b},{id:"minecraft:poison",amplifier:10,duration:20,show_particles:0b,show_icon:0b,ambient:1b}]},CustomName:'"abyssalFissure"',Tags:["DynAbyssAtk"]}
#Timer
scoreboard players add @s abyssalStrikeDur 1

#Shift Left
execute if score @s abyssalStrikeDur matches 5 run tp @s ~ ~ ~ ~50 ~
#Shift Right
execute if score @s abyssalStrikeDur matches 10 run tp @s ~ ~ ~ ~-50 ~

#Reset Timer
execute if score @s abyssalStrikeDur matches 10.. run scoreboard players set @s abyssalStrikeDur 0