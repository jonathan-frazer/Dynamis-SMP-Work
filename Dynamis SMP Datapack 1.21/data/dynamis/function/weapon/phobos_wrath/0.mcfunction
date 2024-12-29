#Remove Advancement
advancement revoke @s only dynamis:weapon/phobos_wrath/atk

#Deal Fire Damage
execute as @n[type=!#dynamis:nalive,distance=..10,nbt={HurtTime:10s}] run function dynamis:weapon/phobos_wrath/1_dmg