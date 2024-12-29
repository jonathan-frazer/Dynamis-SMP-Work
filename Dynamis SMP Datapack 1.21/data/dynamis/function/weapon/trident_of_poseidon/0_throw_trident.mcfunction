#Replace with an Actual Trident
execute if predicate dynamis:trident_of_poseidon/upgraded/hold_mainhand run item replace entity @s weapon.mainhand with trident[custom_model_data=723143,custom_name='{"color":"aqua","italic":false,"text":"Trident Of Poseidon"}',custom_data={DynamisWeapon:1b,DynamisWeaponID:6b,Upgraded:true},enchantments={levels:{"minecraft:loyalty":3},show_in_tooltip:false},enchantment_glint_override=false] 1
execute if predicate dynamis:trident_of_poseidon/upgraded/hold_offhand run item replace entity @s weapon.offhand with trident[custom_model_data=723143,custom_name='{"color":"aqua","italic":false,"text":"Trident Of Poseidon"}',custom_data={DynamisWeapon:1b,DynamisWeaponID:6b,Upgraded:true},enchantments={levels:{"minecraft:loyalty":3},show_in_tooltip:false},enchantment_glint_override=false] 1

#Trident Return
playsound item.trident.return master @a[distance=..32] ~ ~ ~ 0.75 0.75 0.75

scoreboard players set @s tridentUpRevert 1