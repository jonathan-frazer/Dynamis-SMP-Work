#Apply Damage
damage @s 10.0 magic by @p[scores={harmoniousDash=1..}]

execute at @s facing entity @p[scores={harmoniousDash=1..}] feet rotated ~ 0 run tp @s ^ ^ ^-1