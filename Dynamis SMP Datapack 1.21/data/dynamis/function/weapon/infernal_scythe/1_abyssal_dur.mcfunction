scoreboard players add @s abyssalStrikeDur 1

#Spawn Fissure
execute if score @s abyssalStrikeDur matches 2 run function dynamis:weapon/infernal_scythe/2_fissure_spawn

#Wake back up
execute if score @s abyssalStrikeDur matches 20 positioned as @s run fill ~-3 ~-2 ~-3 ~3 ~2 ~3 air replace barrier

#End the Ability
execute if score @s abyssalStrikeDur matches 32.. run function dynamis:weapon/infernal_scythe/5_fissure_end