#Set Score
scoreboard players set @s dynPhantomStrike 1
scoreboard players set @s dynamisSpcAbility 42

#Playsound
execute at @s run playsound block.beacon.activate master @a[distance=..32] ^ ^0.75 ^1 0.75 2 0.75

#Put on Slowness
attribute @s minecraft:generic.movement_speed modifier add c9c48db6-3f25-46b8-a918-36aa0a8e41d6 -1.0 add_value
attribute @s minecraft:generic.gravity modifier add c9c48db6-3f25-46b8-a918-36aa0a8e41d5 -1.0 add_multiplied_base

#Lock in place
summon area_effect_cloud ~ ~ ~ {CustomName:'"phantomStrikeLock"',Duration:40}
tp @n[type=area_effect_cloud,name="phantomStrikeLock"] @s

#Clear Actionbar
title @s actionbar {"text":""}