kill @s

#Explosion
particle dust{color:[0.000,0.000,0.000],scale:3.0} ~ ~0.95 ~ 2.5 1.5 2.5 0 50 force
particle dust{color:[1.000,0.000,0.000],scale:3.0} ~ ~0.95 ~ 2.5 1.5 2.5 0 50 normal
playsound entity.zombie_villager.cure master @a[distance=..32] ~ ~ ~ 0.015 1 0.015

#Deal Damage
execute as @e[type=!#dynamis:nalive,distance=..3,predicate=!dynamis:infernal_scythe/either_level/hold_either] run damage @s 12.0 magic