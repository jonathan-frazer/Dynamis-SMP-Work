#Aegis Of Wisdom
    #Weakness
    effect give @a[predicate=dynamis:aegis_of_wisdom/hold_either] slowness 1 0 true
    effect clear @a[predicate=!dynamis:aegis_of_wisdom/hold_either,predicate=dynamis:aegis_of_wisdom/weakness] slowness

#Infernal Scythe
    #Secondary Stuff
        #Fire Resistance
        effect give @a[predicate=dynamis:infernal_scythe/hold_either] fire_resistance 1 87 true
        effect clear @a[predicate=!dynamis:infernal_scythe/hold_either,predicate=dynamis:infernal_scythe/fire_resistance] fire_resistance

    #Weakness
    effect give @a[predicate=dynamis:infernal_scythe/hold_either] glowing 1 87 true
    effect clear @a[predicate=!dynamis:infernal_scythe/hold_either,predicate=dynamis:infernal_scythe/weakness] glowing

#Apollo Sunblade
    #Secondary Stuff
    effect give @a[predicate=dynamis:apollo_sunblade/hold_either,predicate=dynamis:apollo_sunblade/sunlight,predicate=!dynamis:apollo_sunblade/regneration] regeneration 1 2 true

#Moonfang Bow
    #Lunar Barrage
    scoreboard players add @a[scores={lunarBarrageTrigger=1..}] lunarBarrageTrigger 1
    execute as @a[scores={lunarBarrageTrigger=3..}] run function dynamis:weapon/moonfang_bow/3_lunar_barrage_check
    execute as @a[predicate=dynamis:moonfang_bow/either_level/hold_either,scores={SRXIIBow=1..3}] at @s run scoreboard players reset @s lunarBarrageTrigger
    execute as @a[scores={lunarBarrageCharge=1..}] run function dynamis:weapon/moonfang_bow/lunar_barrage_fx
    execute as @a[scores={lunarBarrageCharge=..0}] run function dynamis:weapon/moonfang_bow/6_lunar_barrage_end

    #Secondary Stuff
        #Night Vision
        effect give @a[predicate=dynamis:moonfang_bow/either_level/hold_either,predicate=!dynamis:moonfang_bow/weakness] night_vision 25 87 true
        effect clear @a[predicate=!dynamis:moonfang_bow/either_level/hold_either,predicate=dynamis:moonfang_bow/night_vision] night_vision
        effect clear @a[predicate=dynamis:moonfang_bow/weakness,predicate=dynamis:moonfang_bow/night_vision] night_vision

        #Moon Arrow
        execute as @a[predicate=dynamis:moonfang_bow/either_level/hold_either,predicate=dynamis:moonfang_bow/boost,scores={SRXIIBow=1..3}] at @s run function dynamis:weapon/moonfang_bow/0_shoot_arrow
        execute as @e[type=arrow,name="moonfang_arrow"] run function dynamis:weapon/moonfang_bow/1_moon_arrow

#Trident
    #Working
        #Throw Trident
        execute as @a[scores={SRXIIClick=1..},predicate=dynamis:trident_of_poseidon/normal/hold_either] run function dynamis:weapon/trident/0_throw_trident

        #Clear(Normal Version)
        execute as @a store success score @s tridentReturn run clear @s trident[minecraft:damage=1,custom_model_data=723143,custom_data={DynamisWeapon:1b,DynamisWeaponID:6b,Upgraded:false}] 1
        execute as @a[scores={tridentReturn=1..}] run function dynamis:weapon/trident/1_return_trident
        
        execute as @a[scores={tridentRevert=10..}] store success score @s tridentReturn run clear @s trident[custom_model_data=723143,custom_data={DynamisWeapon:1b,DynamisWeaponID:6b,Upgraded:false}] 1
        scoreboard players reset @a[scores={tridentRevert=10..}] tridentRevert
        execute as @a[scores={tridentReturn=1..}] run function dynamis:weapon/trident/1_return_trident

        scoreboard players add @a[scores={tridentRevert=1..}] tridentRevert 1
    
        #Creative Mode(Handling)
        execute as @a[scores={tridentThrow=1..},gamemode=creative,predicate=dynamis:trident_of_poseidon/normal/hold_fake_mainhand] run item replace entity @s weapon.mainhand with warped_fungus_on_a_stick[custom_name='{"color":"dark_aqua","italic":false,"text":"Trident Of Poseidon"}',minecraft:unbreakable={show_in_tooltip:false},minecraft:fire_resistant={},minecraft:repair_cost=999,minecraft:custom_model_data=723143,minecraft:custom_data={DynamisWeapon:1b,DynamisWeaponID:6b,Upgraded:false},minecraft:attribute_modifiers={modifiers:[{id:"attack_damage",type:"generic.attack_damage",amount:8,operation:"add_value",slot:"mainhand"},{id:"attack_speed",type:"generic.attack_speed",amount:-2.9,operation:"add_value"}],show_in_tooltip:true}]
        execute as @a[scores={tridentThrow=1..},gamemode=creative,predicate=dynamis:trident_of_poseidon/normal/hold_fake_offhand] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[custom_name='{"color":"dark_aqua","italic":false,"text":"Trident Of Poseidon"}',minecraft:unbreakable={show_in_tooltip:false},minecraft:fire_resistant={},minecraft:repair_cost=999,minecraft:custom_model_data=723143,minecraft:custom_data={DynamisWeapon:1b,DynamisWeaponID:6b,Upgraded:false},minecraft:attribute_modifiers={modifiers:[{id:"attack_damage",type:"generic.attack_damage",amount:8,operation:"add_value",slot:"mainhand"},{id:"attack_speed",type:"generic.attack_speed",amount:-2.9,operation:"add_value"}],show_in_tooltip:true}]

        #Electric Spark
        execute as @e[type=trident,nbt={item:{id:"minecraft:trident",count:1,components:{"minecraft:custom_model_data":723143,"minecraft:custom_data":{DynamisWeapon:1b,DynamisWeaponID:6b}}}}] positioned as @s run particle electric_spark ~ ~ ~ 0.125 0.125 0.125 0.001 2 force
    
    #Upgraded Version
        #Throw Trident
        execute as @a[scores={SRXIIClick=1..},predicate=dynamis:trident_of_poseidon/upgraded/hold_either] run function dynamis:weapon/trident_of_poseidon/0_throw_trident

        #Clear
        execute as @a store success score @s tridentUpReturn run clear @s trident[minecraft:damage=1,custom_model_data=723143,custom_data={DynamisWeapon:1b,DynamisWeaponID:6b,Upgraded:true}] 1
        execute as @a[scores={tridentUpReturn=1..}] run function dynamis:weapon/trident_of_poseidon/1_return_trident
            
        execute as @a[scores={tridentUpRevert=10..}] store success score @s tridentUpReturn run clear @s trident[custom_model_data=723143,custom_data={DynamisWeapon:1b,DynamisWeaponID:6b,Upgraded:true}] 1
        scoreboard players reset @a[scores={tridentUpRevert=10..}] tridentUpRevert
        execute as @a[scores={tridentUpReturn=1..}] run function dynamis:weapon/trident_of_poseidon/3_use_tidal_wave

        scoreboard players add @a[scores={tridentUpRevert=1..}] tridentUpRevert 1

        #Creative Mode(Handling)
        execute as @a[scores={tridentThrow=1..},gamemode=creative,predicate=dynamis:trident_of_poseidon/upgraded/hold_fake_mainhand] run item replace entity @s weapon.mainhand with warped_fungus_on_a_stick[custom_name='{"color":"dark_aqua","italic":false,"text":"Trident Of Poseidon"}',minecraft:lore=['{"bold":false,"color":"#00F269","italic":false,"text":"Upgraded"}'],minecraft:unbreakable={show_in_tooltip:false},minecraft:fire_resistant={},minecraft:repair_cost=999,minecraft:custom_model_data=723143,minecraft:custom_data={DynamisWeapon:1b,DynamisWeaponID:6b,Upgraded:true},minecraft:attribute_modifiers={modifiers:[{id:"attack_damage",type:"generic.attack_damage",amount:8,operation:"add_value",slot:"mainhand"},{id:"attack_speed",type:"generic.attack_speed",amount:-2.9,operation:"add_value"}],show_in_tooltip:true}] 1
        execute as @a[scores={tridentThrow=1..},gamemode=creative,predicate=dynamis:trident_of_poseidon/upgraded/hold_fake_offhand] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[custom_name='{"color":"dark_aqua","italic":false,"text":"Trident Of Poseidon"}',minecraft:lore=['{"bold":false,"color":"#00F269","italic":false,"text":"Upgraded"}'],minecraft:unbreakable={show_in_tooltip:false},minecraft:fire_resistant={},minecraft:repair_cost=999,minecraft:custom_model_data=723143,minecraft:custom_data={DynamisWeapon:1b,DynamisWeaponID:6b,Upgraded:true},minecraft:attribute_modifiers={modifiers:[{id:"attack_damage",type:"generic.attack_damage",amount:8,operation:"add_value",slot:"mainhand"},{id:"attack_speed",type:"generic.attack_speed",amount:-2.9,operation:"add_value"}],show_in_tooltip:true}] 1

        #Wave Duration
        execute as @e[type=armor_stand,name="dynamisTidalWave"] at @s run function dynamis:weapon/trident_of_poseidon/5_tidal_wave_dur

    #Weakness
    execute as @a[predicate=dynamis:trident_of_poseidon/normal/hold_either] positioned as @s if block ~ ~0.5 ~ water run effect clear @s hunger

scoreboard players reset @a SRXIIClick
scoreboard players reset @a SRXIIBow
scoreboard players reset @a tridentThrow