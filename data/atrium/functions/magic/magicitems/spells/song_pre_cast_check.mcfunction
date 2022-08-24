# Putting this in to stop people from making this spell annoying as hell
execute at @s if entity @e[tag=floating_disc,distance=..20] run playsound minecraft:block.wool.break player @a[distance=..3] ~ ~ ~ 1 1 0.1
execute at @s if entity @e[tag=floating_disc,distance=..20] run particle smoke ~ ~1.25 ~ 0.5 0.5 0.5 0.5 25 normal
execute at @s if entity @e[tag=floating_disc,distance=..20] run tellraw @s {"text":"Nobody would want any clashing notes.","italic":true,"color":"gray"}
execute at @s if entity @e[tag=floating_disc,distance=..20] run scoreboard players set @s melodicstaff 0
execute at @s unless entity @e[tag=floating_disc,distance=..20] run function atrium:magic/magicitems/spells/song