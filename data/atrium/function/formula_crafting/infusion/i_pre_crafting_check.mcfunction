# Check to verify that the infusion circle is intact.
#
# Check for the glow item frames.
# CENTER NORTH
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# CENTER EAST
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# CENTER SOUTH
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# CENTER WEST
execute positioned ~-2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
#
# NORTH
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# NORTH-EAST
execute positioned ~3 ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# EAST
execute positioned ~4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# SOUTH-EAST
execute positioned ~3 ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# SOUTH
execute positioned ~ ~ ~4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# SOUTH-WEST
execute positioned ~-3 ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# WEST
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# NORTH-WEST
execute positioned ~-3 ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
#
#
# Total = 12
#
# If the circle is 11 or lower, it fails and gives you a message.
execute if entity @s[scores={valid_ingredients=..11}] run function atrium:formula_crafting/infusion/err_circle_broken
#
# If the Warp Gate is installed, check to make sure it is intact.
execute if entity @s[tag=atrium_warp_gate_installed] positioned ~-6 ~-1 ~ if block ~ ~ ~ minecraft:stone run scoreboard players add @s valid_ingredients 1
execute if entity @s[tag=atrium_warp_gate_installed] positioned ~-6 ~-1 ~1 if block ~ ~ ~ minecraft:stone run scoreboard players add @s valid_ingredients 1
execute if entity @s[tag=atrium_warp_gate_installed] positioned ~-6 ~-1 ~-1 if block ~ ~ ~ minecraft:stone run scoreboard players add @s valid_ingredients 1
execute if entity @s[tag=atrium_warp_gate_installed] positioned ~-6 ~ ~1 if block ~ ~ ~ minecraft:stone run scoreboard players add @s valid_ingredients 1
execute if entity @s[tag=atrium_warp_gate_installed] positioned ~-6 ~ ~-1 if block ~ ~ ~ minecraft:stone run scoreboard players add @s valid_ingredients 1
execute if entity @s[tag=atrium_warp_gate_installed] positioned ~-6 ~1 ~1 if block ~ ~ ~ minecraft:stone run scoreboard players add @s valid_ingredients 1
execute if entity @s[tag=atrium_warp_gate_installed] positioned ~-6 ~1 ~-1 if block ~ ~ ~ minecraft:stone run scoreboard players add @s valid_ingredients 1
execute if entity @s[tag=atrium_warp_gate_installed] positioned ~-6 ~2 ~ if block ~ ~ ~ minecraft:lodestone run scoreboard players add @s valid_ingredients 1
execute if entity @s[tag=atrium_warp_gate_installed] positioned ~-6 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
execute if entity @s[tag=atrium_warp_gate_installed] positioned ~-6 ~2 ~1 if block ~ ~ ~ minecraft:stone run scoreboard players add @s valid_ingredients 1
execute if entity @s[tag=atrium_warp_gate_installed] positioned ~-6 ~2 ~-1 if block ~ ~ ~ minecraft:stone run scoreboard players add @s valid_ingredients 1
execute if entity @s[tag=atrium_warp_gate_installed] positioned ~-6 ~3 ~ if block ~ ~ ~ minecraft:stone run scoreboard players add @s valid_ingredients 1
execute if entity @s[tag=atrium_warp_gate_installed] positioned ~-6 ~3 ~1 if block ~ ~ ~ minecraft:stone_stairs[facing=south,half=bottom,shape=straight] run scoreboard players add @s valid_ingredients 1
execute if entity @s[tag=atrium_warp_gate_installed] positioned ~-6 ~3 ~-1 if block ~ ~ ~ minecraft:stone_stairs[facing=south,half=bottom,shape=straight] run scoreboard players add @s valid_ingredients 1
#
# If you have the Gate installed and the circle is 24 or lower, it fails and gives you a message.
execute if entity @s[scores={valid_ingredients=..24}] if entity @s[tag=atrium_warp_gate_installed] run function atrium:formula_crafting/infusion/err_gate_broken
#
# Warp Gate
#
# If you have the Gate installed and the codex has 25 or higher, the check passes.
execute unless entity @p[gamemode=!spectator,distance=..6,nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_rod_of_relocation:1b}}}}] if entity @s[scores={valid_ingredients=25..}] if entity @s[tag=atrium_warp_gate_installed] run function atrium:formula_crafting/infusion/infusion_base_item
# If the player is holding a Rod of Relocation, run the pack it up script instead.
execute if entity @p[gamemode=!spectator,distance=..6,nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_rod_of_relocation:1b}}}},level=5..] if entity @s[scores={valid_ingredients=25..}] if entity @s[tag=atrium_warp_gate_installed] run function atrium:items/use/placeable_structures/infusion_circle/pack_infusion_circle
#
# Regular
#
# If the circle has 12 or higher, the check passes.
# UNLESS the Occult Altar upgrade is installed. If it is, we need to check more.
execute unless entity @p[gamemode=!spectator,distance=..6,nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_rod_of_relocation:1b}}}}] if entity @s[scores={valid_ingredients=12..}] unless entity @s[tag=atrium_warp_gate_installed] run function atrium:formula_crafting/infusion/infusion_base_item
# If the player is holding a Rod of Relocation, run the pack it up script instead.
execute if entity @p[gamemode=!spectator,distance=..6,nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_rod_of_relocation:1b}}}},level=5..] if entity @s[scores={valid_ingredients=12..}] unless entity @s[tag=atrium_warp_gate_installed] run function atrium:items/use/placeable_structures/infusion_circle/pack_infusion_circle
#
# Reset Score
scoreboard players reset @s valid_ingredients