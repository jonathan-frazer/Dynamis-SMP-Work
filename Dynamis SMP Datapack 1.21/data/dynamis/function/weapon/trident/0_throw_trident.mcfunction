#Replace with an Actual Trident
execute if predicate dynamis:trident_of_poseidon/normal/hold_mainhand run item replace entity @s weapon.mainhand with trident[custom_model_data=723143,custom_name='{"color":"aqua","italic":false,"text":"Trident Of Poseidon"}',custom_data={DynamisWeapon:1b,DynamisWeaponID:6b,Upgraded:false},enchantments={levels:{"minecraft:loyalty":3},show_in_tooltip:false},enchantment_glint_override=false] 1
execute if predicate dynamis:trident_of_poseidon/normal/hold_offhand run item replace entity @s weapon.offhand with trident[custom_model_data=723143,custom_name='{"color":"aqua","italic":false,"text":"Trident Of Poseidon"}',custom_data={DynamisWeapon:1b,DynamisWeaponID:6b,Upgraded:false},enchantments={levels:{"minecraft:loyalty":3},show_in_tooltip:false},enchantment_glint_override=false] 1

scoreboard players set @s tridentRevert 1