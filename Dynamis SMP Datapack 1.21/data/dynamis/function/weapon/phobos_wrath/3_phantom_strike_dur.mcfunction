#Increment Timer
scoreboard players add @s dynPhantomStrike 1

#Lock in Place
tp @s @n[type=area_effect_cloud,name="phantomStrikeLock"]
particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~0.75 ~ 0.75 0.75 0.75 0 10 normal
particle end_rod ~ ~0.75 ~ 0.75 0.75 0.75 0 3 force

#Shoot Attack
execute if score @s dynPhantomStrike matches 40 run function dynamis:weapon/phobos_wrath/4_phantom_strike_shriek

#End The Move
execute if score @s dynPhantomStrike matches 40.. run function dynamis:weapon/phobos_wrath/7_phantom_strike_end