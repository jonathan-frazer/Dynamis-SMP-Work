#Scoreboard Reset
scoreboard players reset @s abyssalStrikeDur

#Explode Fissures
execute as @e[type=area_effect_cloud,tag=DynAbyssAtk] positioned as @s run function dynamis:weapon/infernal_scythe/6_fissure_explode