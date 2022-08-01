# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: ap_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check NORTH EAST for Glow Ink Sac
execute positioned ~2 ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_ink_sac",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_ink_sac",Count:1b}}] run scoreboard players add @s codex 1
#
# Check for nearest player holding something
execute positioned ~ ~ ~ at @p[distance=..10,predicate=!atrium:inv_check/not_holding_anything] run particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~ if entity @p[distance=..10,predicate=!atrium:inv_check/not_holding_anything,gamemode=!spectator] run tag @p[gamemode=!spectator] add researching
execute positioned ~ ~ ~ if entity @p[distance=..10,predicate=!atrium:inv_check/not_holding_anything,gamemode=!spectator] run scoreboard players add @s codex 1
execute as @p[distance=..10,tag=researching] run tag @s add insignificant
#
# (Optional) Check NORTH for Research Notes (Insignificant)
execute positioned ~ ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{research_notes:1b,relevance:0b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{research_notes:1b,relevance:0b}}}] run scoreboard players add @s codex 1
#
# (Optional) Check NORTH for Research Notes (Vague)
execute positioned ~ ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{research_notes:1b,relevance:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{research_notes:1b,relevance:1b}}}] run scoreboard players add @s codex 2
#
# (Optional) Check NORTH for Research Notes (Intricate)
execute positioned ~ ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{research_notes:1b,relevance:2b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{research_notes:1b,relevance:2b}}}] run scoreboard players add @s codex 3
#
# (Optional) Check NORTH for Research Notes (Esoteric)
execute positioned ~ ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{research_notes:1b,relevance:3b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{research_notes:1b,relevance:3b}}}] run scoreboard players add @s codex 4
#
execute if entity @s[scores={codex=2..}] at @s as @p[tag=researching,predicate=atrium:inv_check/research/research_minor_cauldron] run function atrium:magic/runic_codex/research/minor_research_cauldron
execute if entity @s[scores={codex=2..}] at @s as @p[tag=researching,predicate=atrium:inv_check/research/research_moderate_cauldron] run function atrium:magic/runic_codex/research/moderate_research_cauldron
execute if entity @s[scores={codex=2..}] at @s as @p[tag=researching,predicate=atrium:inv_check/research/research_major_cauldron] run function atrium:magic/runic_codex/research/major_research_cauldron
execute if entity @s[scores={codex=2..}] at @s as @p[tag=researching,predicate=atrium:inv_check/research/research_extraordinary_cauldron] run function atrium:magic/runic_codex/research/extraordinary_research_cauldron
#
execute if entity @s[scores={codex=2..}] at @s as @p[tag=researching,predicate=atrium:inv_check/research/research_minor_infusion] run function atrium:magic/runic_codex/research/minor_research_infusion
execute if entity @s[scores={codex=2..}] at @s as @p[tag=researching,predicate=atrium:inv_check/research/research_moderate_infusion] run function atrium:magic/runic_codex/research/moderate_research_infusion
execute if entity @s[scores={codex=2..}] at @s as @p[tag=researching,predicate=atrium:inv_check/research/research_major_infusion] run function atrium:magic/runic_codex/research/major_research_infusion
execute if entity @s[scores={codex=2..}] at @s as @p[tag=researching,predicate=atrium:inv_check/research/research_extraordinary_infusion] run function atrium:magic/runic_codex/research/extraordinary_research_infusion
#
execute if entity @s[scores={codex=2..}] at @s as @p[tag=researching,predicate=atrium:inv_check/research/research_minor_codex] run function atrium:magic/runic_codex/research/minor_research_codex
execute if entity @s[scores={codex=2..}] at @s as @p[tag=researching,predicate=atrium:inv_check/research/research_moderate_codex] run function atrium:magic/runic_codex/research/moderate_research_codex
execute if entity @s[scores={codex=2..}] at @s as @p[tag=researching,predicate=atrium:inv_check/research/research_major_codex] run function atrium:magic/runic_codex/research/major_research_codex
execute if entity @s[scores={codex=2..}] at @s as @p[tag=researching,predicate=atrium:inv_check/research/research_extraordinary_codex] run function atrium:magic/runic_codex/research/extraordinary_research_codex
#
execute if entity @s[scores={codex=2..}] at @s as @p[tag=researching,predicate=atrium:inv_check/research/research_minor_any] run function atrium:magic/runic_codex/research/minor_research_any
execute if entity @s[scores={codex=2..}] at @s as @p[tag=researching,predicate=atrium:inv_check/research/research_moderate_any] run function atrium:magic/runic_codex/research/moderate_research_any
execute if entity @s[scores={codex=2..}] at @s as @p[tag=researching,predicate=atrium:inv_check/research/research_major_any] run function atrium:magic/runic_codex/research/major_research_any
execute if entity @s[scores={codex=2..}] at @s as @p[tag=researching,predicate=atrium:inv_check/research/research_extraordinary_any] run function atrium:magic/runic_codex/research/extraordinary_research_any
#
# If the player is somehow still insignificant by this point, send them to the baby library
execute if entity @s[scores={codex=2..}] at @s as @p[tag=insignificant] run function atrium:magic/runic_codex/research/research_insignificant
# NOTE: make new reset script with writing sounds + no particles 
execute if entity @s[scores={codex=2..}] at @s run function atrium:magic/runic_codex/rc_reset
scoreboard players set @s codex 0
