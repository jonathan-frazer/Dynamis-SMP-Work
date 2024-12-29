advancement revoke @s only dynamis:weapon/moonfang_bow/using_lunar_barrage

#Refill CrossBow
execute if predicate dynamis:moonfang_bow/upgraded/hold_mainhand run item replace entity @s weapon.mainhand with crossbow[custom_name='{"color":"light_purple","text":"Lunar Barrage","italic":false,"bold":true}',lore=['{"bold":false,"color":"dark_purple","italic":false,"text":"Moonfang Bow"}'],unbreakable={show_in_tooltip:false},fire_resistant={},rarity="epic",repair_cost=999,custom_model_data=723140,custom_data={DynamisWeapon:1b,DynamisWeaponID:4b,Upgraded:true},enchantments={levels:{"minecraft:unbreaking":3},show_in_tooltip:false},charged_projectiles=[{id:"minecraft:arrow",count:1}]] 1
execute if predicate dynamis:moonfang_bow/upgraded/hold_offhand run item replace entity @s weapon.offhand with crossbow[custom_name='{"color":"light_purple","text":"Lunar Barrage","italic":false,"bold":true}',lore=['{"bold":false,"color":"dark_purple","italic":false,"text":"Moonfang Bow"}'],unbreakable={show_in_tooltip:false},fire_resistant={},rarity="epic",repair_cost=999,custom_model_data=723140,custom_data={DynamisWeapon:1b,DynamisWeaponID:4b,Upgraded:true},enchantments={levels:{"minecraft:unbreaking":3},show_in_tooltip:false},charged_projectiles=[{id:"minecraft:arrow",count:1}]] 1

#Modify Arrow
execute positioned ~ ~1 ~ as @n[type=arrow,distance=..2,nbt={life:0s}] run data merge entity @s {NoGravity:0b,player:1b,pickup:0,crit:1b,PierceLevel:3b,CustomName:'"moonfang_arrow"'}

#Drain Meter
scoreboard players remove @s lunarBarrageCharge 10