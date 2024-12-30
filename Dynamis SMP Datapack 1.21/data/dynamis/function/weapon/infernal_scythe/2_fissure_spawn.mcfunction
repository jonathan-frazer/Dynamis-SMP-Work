#Spawn the cloud
execute store result storage dynamis:rotation YRot float 1.0 run data get entity @s Rotation[0]
execute at @s rotated ~ 0 run function dynamis:weapon/infernal_scythe/3_fissure_spawn with storage dynamis:rotation