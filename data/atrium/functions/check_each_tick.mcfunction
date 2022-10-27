# Particle Manager
execute if entity @e[tag=atrium_particle] run function atrium:general/particle_manager
# Ghost (Dead Player) Manager
execute if entity @a[gamemode=spectator] as @a[gamemode=spectator] at @s run function atrium:general/death/ghost_manager
#
# PATREON (Runekeeper)
execute as @a[name="shadow_knight6",gamemode=!spectator,nbt={Inventory:[{Slot:103b,tag:{shadow_knight6_item:1b}}]}] at @s anchored eyes run particle minecraft:smoke ^ ^-0.5 ^-0.3 0.25 0.45 0.25 0 8
