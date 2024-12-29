scoreboard players set @s dynamisSpcAbility 10

#Spawn Wave
$summon armor_stand ~ ~ ~ {Rotation:[$(YRot)F,0F],CustomName:'"dynamisTidalWave"',NoGravity:1b,Invisible:1b,NoBasePlate:1b,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:knowledge_book",count:1,components:{"minecraft:custom_model_data":723143}},{}]}

#Trident Return
playsound entity.generic.splash master @a[distance=..32] ~ ~ ~ 2 1.2 1
playsound entity.player.attack.sweep master @a[distance=..32] ~ ~ ~ 2 1.2 1