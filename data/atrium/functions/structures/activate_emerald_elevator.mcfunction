# Emerald Elevators require 4 emeralds to activate.
#
execute positioned ~2 ~2 ~2 unless entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald",Count:1b}}] run return 0
execute positioned ~-2 ~2 ~2 unless entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald",Count:1b}}] run return 0
execute positioned ~2 ~2 ~-2 unless entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald",Count:1b}}] run return 0
execute positioned ~-2 ~2 ~-2 unless entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald",Count:1b}}] run return 0
#
# If all checks above pass...
# Give the nearest player that isn't in Spectator mode Levitation.
execute positioned ~ ~2 ~ as @p[gamemode=!spectator,distance=..2] run effect give @s minecraft:levitation 30 9 false
execute positioned ~ ~2 ~ as @p[gamemode=!spectator,distance=..2] run effect give @s minecraft:levitation 60 4 false
execute positioned ~ ~2 ~ as @p[gamemode=!spectator,distance=..2] run effect give @s minecraft:levitation 120 0 false
execute positioned ~ ~2 ~ as @p[gamemode=!spectator,distance=..2] run effect give @s minecraft:slow_falling 100 0 false
execute positioned ~ ~2 ~ at @p[gamemode=!spectator,distance=..2] run particle minecraft:happy_villager ~ ~1.25 ~ 0.25 1.5 0.25 0.25 35 normal
execute positioned ~ ~2 ~ at @p[gamemode=!spectator,distance=..2] run playsound minecraft:entity.allay.item_given block @a[distance=..10] ~ ~ ~ 1 0.75 0.25
