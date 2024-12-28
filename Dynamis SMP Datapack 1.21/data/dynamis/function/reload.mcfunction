tellraw @a [{"text":"Dynamis SMP"}]

schedule clear dynamis:mainsec
schedule function dynamis:mainsec 1t

scoreboard objectives add SRXIIClick used:warped_fungus_on_a_stick
scoreboard objectives add tridentReturn dummy
scoreboard objectives add tridentThrow used:trident
scoreboard objectives add tridentRevert dummy
scoreboard objectives add SunDoTGiver dummy
scoreboard objectives add MoonDoTGiver dummy