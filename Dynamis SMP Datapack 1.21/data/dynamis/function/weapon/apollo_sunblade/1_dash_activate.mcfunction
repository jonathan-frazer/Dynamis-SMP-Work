#Set Score
scoreboard players set @s harmoniousDash 10
scoreboard players set @s dynamisSpcAbility 42

#Action Bar
title @s actionbar {"color":"#FFFF00","text":"HARMONIOUS DASH","bold": true}

#Set Dir
data modify storage dynamis:rotation YRot set from entity @s Rotation[0]
data modify storage dynamis:rotation XRot set from entity @s Rotation[1]
function dynamis:weapon/apollo_sunblade/2_dash_aim with storage dynamis:rotation

#Remove Gravity
tp @s @s
effect give @s resistance 1 255 true
attribute @s minecraft:generic.gravity modifier add c9c48db6-3f25-46b8-a918-36aa0a8e41d8 -1.0 add_multiplied_base
attribute @s minecraft:generic.safe_fall_distance modifier add c9c48db6-3f25-46b8-a918-36aa0a8e41d7 255.0 add_value

#Playsound
playsound block.bell.use master @a[distance=..32] ^ ^0.75 ^1 0.75 2 0.75

#Put on Shield
effect give @s resistance 1 87 true