#Aegis Of Wisdom
    #Weakness
    effect give @a[predicate=dynamis:aegis_of_wisdom/hold_either] slowness 1 0 true
    effect clear @a[predicate=!dynamis:aegis_of_wisdom/hold_either,predicate=dynamis:aegis_of_wisdom/weakness] slowness

#Infernal Scythe
    #Weakness
    effect give @a[predicate=dynamis:infernal_scythe/hold_either] glowing 1 87 true
    effect clear @a[predicate=!dynamis:infernal_scythe/hold_either,predicate=dynamis:infernal_scythe/weakness] glowing

#Trident
    #Working
        #Throw Trident
        execute as @a[scores={SRXIIClick=1..},predicate=dynamis:trident_of_poseidon/hold_either] run function dynamis:weapon/trident/0_throw_trident

        #Clear
        execute as @a store success score @s tridentReturn run clear @s trident[minecraft:damage=1,custom_model_data=723143,custom_data={DynamisWeapon:1b,DynamisWeaponID:6b}] 1
        execute as @a[scores={tridentReturn=1..}] run function dynamis:weapon/trident/1_return_trident
        execute as @a[scores={tridentRevert=10..}] store success score @s tridentReturn run clear @s trident[custom_model_data=723143,custom_data={DynamisWeapon:1b,DynamisWeaponID:6b}] 1
        scoreboard players reset @a[scores={tridentRevert=10..}] tridentRevert
        execute as @a[scores={tridentReturn=1..}] run function dynamis:weapon/trident/1_return_trident

        scoreboard players add @a[scores={tridentRevert=1..}] tridentRevert 1
    
        #Creative Mode(Handling)
        execute as @a[scores={tridentThrow=1..},gamemode=creative,predicate=dynamis:trident_of_poseidon/hold_fake_mainhand] run item replace entity @s weapon.mainhand with warped_fungus_on_a_stick[custom_model_data=723143,custom_name='{"color":"aqua","italic":false,"text":"Trident of Poseidon"}',custom_data={DynamisWeapon:1b,DynamisWeaponID:6b}] 1
        execute as @a[scores={tridentThrow=1..},gamemode=creative,predicate=dynamis:trident_of_poseidon/hold_fake_offhand] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[custom_model_data=723143,custom_name='{"color":"aqua","italic":false,"text":"Trident of Poseidon"}',custom_data={DynamisWeapon:1b,DynamisWeaponID:6b}] 1

        #Electric Spark
        execute as @e[type=trident,nbt={item:{id:"minecraft:trident",count:1,components:{"minecraft:custom_model_data":723143,"minecraft:custom_data":{DynamisWeapon:1b,DynamisWeaponID:6b}}}}] positioned as @s run particle electric_spark ~ ~ ~ 0.125 0.125 0.125 0.001 2 force
    
    #Weakness
    execute as @a[predicate=dynamis:trident_of_poseidon/hold_either] positioned as @s if block ~ ~0.5 ~ water run effect clear @s hunger

scoreboard players reset @a SRXIIClick
scoreboard players reset @a tridentThrow