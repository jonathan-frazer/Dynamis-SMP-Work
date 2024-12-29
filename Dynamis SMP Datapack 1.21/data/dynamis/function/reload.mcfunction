tellraw @a [{"text":"Dynamis SMP"}]

schedule clear dynamis:mainsec
schedule function dynamis:mainsec 1t

scoreboard objectives add SRXIIClick used:warped_fungus_on_a_stick
scoreboard objectives add SRXIITimer dummy

#MAIN Ability Cooldown
scoreboard objectives add dynamisSpcAbility dummy

#Trident Return
scoreboard objectives add tridentThrow used:trident
scoreboard objectives add tridentReturn dummy
scoreboard objectives add tridentRevert dummy
scoreboard objectives add tridentUpReturn dummy
scoreboard objectives add tridentUpRevert dummy

#Sunblade
scoreboard objectives add SunDoTGiver dummy

#Moonfang Bow
scoreboard objectives add MoonDoTGiver dummy
scoreboard objectives add SRXIIBow used:bow