#Remove the Divine Protection Score
scoreboard players remove @s divineReflectionDur 1

#Particle
execute positioned as @s positioned ~ ~1 ~ run function dynamis:weapon/aegis_of_wisdom/8_divine_particle_fx

#Effects
effect give @s resistance 1 255 true
effect give @s strength 1 1 true
effect give @s fire_resistance 1 1 true
effect clear @s wither
effect clear @s poison

#End the Ability
execute if score @s divineReflectionDur matches ..0 run scoreboard players reset @s divineReflectionDur