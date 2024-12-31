particle falling_water ~ ~ ~ 0.4 0.4 0.4 0.001 5 normal
particle bubble ~ ~ ~ 0.3 0.3 0.3 0.001 10 normal

execute positioned ~ ~0.5 ~ as @e[type=!#dynamis:nalive,distance=..1] unless score @s dynamisSpcAbility matches 41.. run function dynamis:weapon/trident_of_poseidon/7_tidal_wave_dmg
execute positioned ~ ~-0.5 ~ as @e[type=!#dynamis:nalive,distance=..1] unless score @s dynamisSpcAbility matches 41.. run function dynamis:weapon/trident_of_poseidon/7_tidal_wave_dmg