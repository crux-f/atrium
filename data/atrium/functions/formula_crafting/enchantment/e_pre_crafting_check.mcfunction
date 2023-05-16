# Check to verify that the runic codex is intact.
#
# Check for the glow item frames.
# NORTH
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# NORTH-EAST
execute positioned ~2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# EAST
execute positioned ~4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# SOUTH-EAST
execute positioned ~2 ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# SOUTH
execute positioned ~ ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# SOUTH-WEST
execute positioned ~-2 ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# WEST
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# NORTH-WEST
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
#
# Check for the Enchanting Table.
execute positioned ~ ~ ~ if block ~ ~ ~ minecraft:enchanting_table run scoreboard players add @s valid_ingredients 1
#
# Total = 9
#
# If the codex is 8 or lower, it fails and gives you a message.
execute if entity @s[scores={valid_ingredients=..8}] run function atrium:formula_crafting/enchantment/err_codex_broken
#
# If the Occult Altar is installed, check to make sure it is intact.
execute positioned ~ ~ ~-5 if block ~ ~ ~ minecraft:dropper run scoreboard players add @s valid_ingredients 1
execute positioned ~1 ~ ~-5 if block ~ ~ ~ minecraft:dropper run scoreboard players add @s valid_ingredients 1
execute positioned ~-1 ~ ~-5 if block ~ ~ ~ minecraft:dropper run scoreboard players add @s valid_ingredients 1
execute positioned ~ ~1 ~-5 if block ~ ~ ~ minecraft:black_candle unless block ~ ~ ~ minecraft:black_candle[candles=1] run scoreboard players add @s valid_ingredients 1
execute positioned ~1 ~1 ~-5 if block ~ ~ ~ minecraft:gray_carpet run scoreboard players add @s valid_ingredients 1
execute positioned ~-1 ~1 ~-5 if block ~ ~ ~ minecraft:black_candle unless block ~ ~ ~ minecraft:black_candle[candles=1] run scoreboard players add @s valid_ingredients 1
#
# If you have the Altar installed and the codex is 12 or lower, it fails and gives you a message.
execute if entity @s[scores={valid_ingredients=..12}] if data entity @s data.occult_altar_installed run function atrium:formula_crafting/enchantment/err_altar_broken
#
# Occult Altar
#
# If you have the Altar installed and the codex has 13 or higher, the check passes.
execute unless entity @p[gamemode=!spectator,distance=..6,nbt={SelectedItem:{tag:{atrium_rod_of_relocation:1b}}}] if entity @s[scores={valid_ingredients=13..}] if data entity @s data.occult_altar_installed run function atrium:formula_crafting/enchantment/enchantment_base_item
# If the player is holding a Rod of Relocation, run the pack it up script instead.
execute if entity @p[gamemode=!spectator,distance=..6,nbt={SelectedItem:{tag:{atrium_rod_of_relocation:1b}}},level=5..] if entity @s[scores={valid_ingredients=13..}] if data entity @s data.occult_altar_installed run function atrium:items/use/placeable_structures/runic_codex/pack_runic_codex
#
# Regular
#
# If the codex has 9 or higher, the check passes.
# UNLESS the Occult Altar upgrade is installed. If it is, we need to check more.
execute unless entity @p[gamemode=!spectator,distance=..6,nbt={SelectedItem:{tag:{atrium_rod_of_relocation:1b}}}] if entity @s[scores={valid_ingredients=9..}] unless data entity @s data.occult_altar_installed run function atrium:formula_crafting/enchantment/enchantment_base_item
# If the player is holding a Rod of Relocation, run the pack it up script instead.
execute if entity @p[gamemode=!spectator,distance=..6,nbt={SelectedItem:{tag:{atrium_rod_of_relocation:1b}}},level=5..] if entity @s[scores={valid_ingredients=9..}] unless data entity @s data.occult_altar_installed run function atrium:items/use/placeable_structures/runic_codex/pack_runic_codex
#