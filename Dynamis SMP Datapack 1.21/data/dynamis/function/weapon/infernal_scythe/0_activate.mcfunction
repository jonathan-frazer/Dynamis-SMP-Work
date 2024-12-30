#Fall to the Ground
execute positioned as @s run fill ~1 ~1 ~1 ~-1 ~1 ~-1 barrier replace #dynamis:passable

#Slowdown
effect give @s slowness 1 20 true

#Prevent Dmg
effect give @s resistance 1 20 true

#Scores
scoreboard players set @s abyssalStrikeDur 1
scoreboard players set @s dynamisSpcAbility 2
scoreboard players reset @s SRXIIClick

