#Spawn The Area effect cloud
$summon area_effect_cloud ^ ^0.15 ^2.5 {Duration:30,CustomName:'"abyssalTremor"',Tags:["DynAbyssAtk"],Rotation:[$(YRot)F,0F]}
execute positioned ^ ^0.15 ^2.5 as @n[type=area_effect_cloud,name="abyssalTremor"] at @s run tp @s ~ ~ ~ ~-20 0