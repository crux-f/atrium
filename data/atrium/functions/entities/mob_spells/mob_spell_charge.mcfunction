# (this uses a simplified version of the logic found in atrium:triggers/magic/spell_charge that players use)
#
# +1 charge per tick
# At the 1, 2, and 3 second marks, play a sound.
scoreboard players add @s charge 1
execute if entity @s[scores={charge=20}] run playsound minecraft:block.amethyst_cluster.place player @a[distance=..10] ~ ~ ~ 0.75 0 0.25
execute if entity @s[scores={charge=40}] run playsound minecraft:block.amethyst_cluster.place player @a[distance=..10] ~ ~ ~ 0.75 0.35 0.25
execute if entity @s[scores={charge=60}] run playsound minecraft:block.amethyst_cluster.place player @a[distance=..10] ~ ~ ~ 0.75 0.75 0.25
#
# Sect Aquamancer
# Casts Flood spell (cannot cast without staff)
execute if entity @s[scores={charge=60..},tag=atrium_sect_aquamancer] run function atrium:entities/mob_spells/flood 