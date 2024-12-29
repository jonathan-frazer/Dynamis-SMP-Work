scoreboard players set @s lunarBarrageCharge 300

#Replace with a Cross bow
execute if predicate dynamis:moonfang_bow/upgraded/hold_mainhand run item replace entity @s weapon.mainhand with crossbow[custom_name='{"color":"light_purple","text":"Lunar Barrage","italic":false,"bold":true}',lore=['{"bold":false,"color":"dark_purple","italic":false,"text":"Moonfang Bow"}'],unbreakable={show_in_tooltip:false},fire_resistant={},rarity="epic",repair_cost=999,custom_model_data=723140,custom_data={DynamisWeapon:1b,DynamisWeaponID:4b,Upgraded:true},enchantments={levels:{"minecraft:unbreaking":3},show_in_tooltip:false},charged_projectiles=[{id:"minecraft:arrow",count:1}]] 1
execute if predicate dynamis:moonfang_bow/upgraded/hold_offhand run item replace entity @s weapon.offhand with crossbow[custom_name='{"color":"light_purple","text":"Lunar Barrage","italic":false,"bold":true}',lore=['{"bold":false,"color":"dark_purple","italic":false,"text":"Moonfang Bow"}'],unbreakable={show_in_tooltip:false},fire_resistant={},rarity="epic",repair_cost=999,custom_model_data=723140,custom_data={DynamisWeapon:1b,DynamisWeaponID:4b,Upgraded:true},enchantments={levels:{"minecraft:unbreaking":3},show_in_tooltip:false},charged_projectiles=[{id:"minecraft:arrow",count:1}]] 1

#Particle Effects
execute at @s run particle witch ~ ~0.75 ~ 0.5 0.75 0.5 0.01 200 normal

#Dragon Sound
execute at @s run playsound entity.ender_dragon.growl master @a[distance=..32] ~ ~ ~ 2 1 1
execute at @s run playsound entity.zombie_villager.cure master @a[distance=..32] ~ ~ ~ 0.75 1.5 1