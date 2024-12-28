#Trident
execute as @a[scores={SRXIIClick=1..},predicate=dynamis:trident_of_poseidon/hold_mainhand] run function dynamis:weapon/trident/0_throw_trident
execute as @a[scores={SRXIIClick=1..},predicate=dynamis:trident_of_poseidon/hold_offhand] run function dynamis:weapon/trident/0_throw_trident

execute as @a store success score @s tridentReturn run clear @s trident[minecraft:damage=1,custom_model_data=723143,custom_data={DynamisWeapon:1b,DynamisWeaponID:6b}] 1
execute as @a[scores={tridentReturn=1..}] run function dynamis:weapon/trident/1_return_trident

execute as @a[scores={tridentThrow=1..},gamemode=creative,predicate=dynamis:trident_of_poseidon/hold_fake_mainhand] run item replace entity @s weapon.mainhand with warped_fungus_on_a_stick[custom_model_data=723143,custom_name='{"color":"aqua","italic":false,"text":"Trident of Poseidon"}',custom_data={DynamisWeapon:1b,DynamisWeaponID:6b}] 1
execute as @a[scores={tridentThrow=1..},gamemode=creative,predicate=dynamis:trident_of_poseidon/hold_fake_offhand] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[custom_model_data=723143,custom_name='{"color":"aqua","italic":false,"text":"Trident of Poseidon"}',custom_data={DynamisWeapon:1b,DynamisWeaponID:6b}] 1

execute as @e[type=trident,nbt={item:{id:"minecraft:trident",count:1,components:{"minecraft:custom_model_data":723143,"minecraft:custom_data":{DynamisWeapon:1b,DynamisWeaponID:6b}}}}] run particle electric_spark ~ ~ ~ 0.125 0.125 0.125 0.001 2 force

scoreboard players reset @a SRXIIClick
scoreboard players reset @a tridentThrow