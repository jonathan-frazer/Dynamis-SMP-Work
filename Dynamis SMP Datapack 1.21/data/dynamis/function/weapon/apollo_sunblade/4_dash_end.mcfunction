#Reset Score
scoreboard players reset @s harmoniousDash

#Remove Shield
effect clear @s[predicate=dynamis:apollo_sunblade/resistance] resistance

#Remove Zero G
attribute @s minecraft:generic.gravity modifier remove c9c48db6-3f25-46b8-a918-36aa0a8e41d8
schedule function dynamis:weapon/apollo_sunblade/5_remove_fall_dmg_pad 1s