#Return Trident
function dynamis:weapon/trident_of_poseidon/1_return_trident

#Particle
execute at @s positioned ^ ^ ^1.1 run particle sweep_attack ~ ~1 ~ 0.125 0.125 0.125 0.001 3 normal

#Off Cooldown
execute store result storage dynamis:rotation YRot float 1.0 run data get entity @s Rotation[0]
execute unless score @s dynamisSpcAbility matches 1.. at @s run function dynamis:weapon/trident_of_poseidon/4_spawn_tidal_wave with storage dynamis:rotation
