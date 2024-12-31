#Decrement Timer
scoreboard players remove @s harmoniousDash 1

#Move in the Given Direction
execute positioned as @s as @n[type=area_effect_cloud,name="harmoniousDashPtr",distance=..3] run tp @s ~ ~ ~
execute rotated as @n[type=area_effect_cloud,name="harmoniousDashPtr",distance=..3] positioned ^ ^ ^1.05 if block ~ ~0.5 ~ #dynamis:passable if block ~ ~1.5 ~ #dynamis:passable positioned ^ ^ ^0.50 if block ~ ~0.5 ~ #dynamis:passable if block ~ ~1.5 ~ #dynamis:passable run tp @s ^ ^ ^-0.05

#Particle Effects
particle dust{scale:1.5,color:[1.00,1.00,0.00]} ~ ~0.5 ~ 0.35 0.5 0.35 0.001 7 force
particle firework ~ ~0.5 ~ 0.15 0.5 0.15 0.1 3 force

#Remove Unwanted Effects
effect clear @s slowness
effect clear @s weakness
effect clear @s poison
effect clear @s wither
effect clear @s hunger

#Bursts
execute if score @s harmoniousDash matches 1 run summon firework_rocket ~ ~1 ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16761600,16777215],fade_colors:[I;16777215,16766208]}]}}}}
execute if score @s harmoniousDash matches 4 run summon firework_rocket ~ ~1 ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16761600,16777215],fade_colors:[I;16777215,16766208]}]}}}}
execute if score @s harmoniousDash matches 7 run summon firework_rocket ~ ~1 ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16761600,16777215],fade_colors:[I;16777215,16766208]}]}}}}

#Damage
execute as @e[type=!#dynamis:nalive,distance=..1.5] unless score @s harmoniousDash matches 1.. run function dynamis:weapon/apollo_sunblade/dmg
execute positioned ~ ~1 ~ as @e[type=!#dynamis:nalive,distance=..1.5] unless score @s harmoniousDash matches 1.. run function dynamis:weapon/apollo_sunblade/dmg

#End Ability
execute if score @s harmoniousDash matches ..0 run function dynamis:weapon/apollo_sunblade/4_dash_end