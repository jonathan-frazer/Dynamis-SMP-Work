scoreboard players reset @s lunarBarrageCharge

#Remove Cross Bow
kill @e[type=item,nbt={Item:{id:"minecraft:crossbow",components:{"minecraft:custom_data":{DynamisWeapon:true,DynamisWeaponID:4,Upgraded:true}}}},limit=1]
clear @s crossbow[custom_model_data=723140,custom_data={DynamisWeapon:1b,DynamisWeaponID:4b,Upgraded:true}]

#Return Original Bow back
give @s bow[custom_name='{"color":"light_purple","italic":false,"text":"Moonfang Bow"}',unbreakable={show_in_tooltip:false},fire_resistant={},rarity="epic",repair_cost=999,custom_model_data=723140,custom_data={DynamisWeapon:1b,DynamisWeaponID:4b,Upgraded:true},enchantments={levels:{"minecraft:unbreaking":3},show_in_tooltip:false},lore=['{"bold":false,"color":"#00F269","italic":false,"text":"Upgraded"}']]