#Damage
damage @s[type=player] 16.0 magic by @p[scores={dynPhantomStrike=40}]
damage @s[type=!player] 24.0 magic by @p[scores={dynPhantomStrike=40}]

#Debuffs
effect give @s hunger 1 255 false
effect give @s[type=!player] slowness 2 3 false
effect give @s[type=player] blindness 2 3 false