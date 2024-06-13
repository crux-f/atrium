# Runs when the player enters a portal to Apocryphus.
#
# If the player has any items in their inventory, let them know they can't go in with them.
execute as @p[gamemode=!spectator,distance=..3] if data entity @s Inventory[] run tellraw @s {"text":"(A journey into Apocryphus cannot begin until you have an empty inventory.)","italic":true,"color":"red"}
# If the player has an empty inventory, tag them and run the enter script.
execute as @p[gamemode=!spectator,distance=..3] unless data entity @s Inventory[] run tag @s add atrium_entering_apocryphus
execute as @p[tag=atrium_entering_apocryphus] run function atrium:structures/apocryphus/tp_into_apocryphus
