scoreboard players add @s SRXIITimer 1

#Move
execute positioned ^ ^ ^1 if block ^ ^ ^1.75 #dynamis:passable if block ^ ^1 ^1.75 #dynamis:passable run tp @s ~ ~ ~

#Push back Enemies
execute positioned ^ ^ ^1 positioned ~ ~0.5 ~ run function dynamis:weapon/trident_of_poseidon/6_tidal_wave_fx
execute positioned ^-1 ^ ^0.75 positioned ~ ~0.5 ~ run function dynamis:weapon/trident_of_poseidon/6_tidal_wave_fx
execute positioned ^1 ^ ^0.75 positioned ~ ~0.5 ~ run function dynamis:weapon/trident_of_poseidon/6_tidal_wave_fx
execute positioned ^-2 ^ ^0.25 positioned ~ ~0.5 ~ run function dynamis:weapon/trident_of_poseidon/6_tidal_wave_fx
execute positioned ^2 ^ ^0.25 positioned ~ ~0.5 ~ run function dynamis:weapon/trident_of_poseidon/6_tidal_wave_fx
execute positioned ^3 ^ ^-0.2 positioned ~ ~0.5 ~ run function dynamis:weapon/trident_of_poseidon/6_tidal_wave_fx
execute positioned ^-3 ^ ^-0.2 positioned ~ ~0.5 ~ run function dynamis:weapon/trident_of_poseidon/6_tidal_wave_fx

kill @s[scores={SRXIITimer=50..}]