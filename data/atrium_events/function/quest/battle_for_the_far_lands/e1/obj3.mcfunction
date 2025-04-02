tellraw @a[tag=event] ["",{"text":"\u2714 Rally in Cloud City to complete your preparations.","color":"dark_green"},{"text":"\n"},{"text":"\u2714 Protect Cloud City from The Armada's first Raid.","color":"dark_green"},{"text":"\n"},{"text":"\u231b Regroup before the next attack.","color":"green"},{"text":"\n"},{"text":" \u0020\u2022 Repair structures, weapons, and armor\n \u0020\u2022 Restock supplies","color":"gray"}]
execute as @a[tag=event] at @s run function atrium_events:quest/sfx/build_obj
scoreboard objectives remove atrium_events_deaths
execute as @a[gamemode=spectator] in minecraft:overworld run tp @s 6825.5 179 -12550767.5
execute positioned 6825.5 179 -12550767.5 in overworld run gamemode survival @a[gamemode=spectator,distance=..10]