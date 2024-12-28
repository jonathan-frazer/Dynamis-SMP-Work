#Aegis of Wisdom
    #Weakness

#Apollo Sunblade
    #Weakness
    execute as @a[predicate=dynamis:apollo_sunblade/hold_either] if predicate dynamis:apollo_sunblade/weakness run scoreboard players add @s SunDoTGiver 1
    execute as @a[scores={SunDoTGiver=2..}] run function dynamis:weapon/apollo_sunblade/weakness

#Infernal Scythe
    #Weakness
    
#Moonfang Bow
    #Weakness
    execute as @a[predicate=dynamis:moonfang_bow/hold_either] if predicate dynamis:moonfang_bow/hold_either run scoreboard players add @s MoonDoTGiver 1
    execute as @a[scores={MoonDoTGiver=2..}] run function dynamis:weapon/moonfang_bow/weakness

#Phobos Wrath
    #Weakness(Mute Point)

#Trident
    #Weakness
    execute as @a[predicate=dynamis:trident_of_poseidon/hold_either] positioned as @s unless block ~ ~0.5 ~ water run effect give @s hunger 1 0 true

#Upgrader
execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_model_data":723144,"minecraft:custom_data":{DynamisWeapon:1b,GodUpgrader:1b}}}}] at @s run function dynamis:weapon/upgrader/0

schedule function dynamis:mainsec 19t