#Timer
scoreboard players add @s SRXIITimer 1

#Particle Effects
execute positioned as @s[nbt={inGround:0b}] run particle witch ~ ~ ~ 0 0 0 0 1 force

#Remove Gravity
execute if score @s[nbt={NoGravity:true}] SRXIITimer matches 40.. run data modify entity @s NoGravity set value false