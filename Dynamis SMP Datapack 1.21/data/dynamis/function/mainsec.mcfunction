#Upgrader
execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_model_data":723144,"minecraft:custom_data":{DynamisWeapon:1b,GodUpgrader:1b}}}}] at @s run function dynamis:weapon/upgrader/0

schedule function dynamis:mainsec 1s