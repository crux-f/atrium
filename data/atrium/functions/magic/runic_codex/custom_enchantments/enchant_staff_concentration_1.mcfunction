# Enchantment item checks work the same as normal item checks.
# Staves are complicated so I have to do it this annoying external script way for them but for normal weapons and armor I plan on using /item modify
#
# Check NORTH WEST for Glow Ink Sac
execute positioned ~-2 ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_ink_sac",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_ink_sac",Count:1b}}] run scoreboard players add @s codex 1
#
# Check NORTH EAST for [Any item with Efficiency I]
execute positioned ~2 ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:efficiency"}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:efficiency"}]}}}] run scoreboard players add @s codex 1
execute positioned ~2 ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:efficiency"}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:efficiency"}]}}}] run scoreboard players add @s codex 1
#
# Check EAST for Enchantment Catalyst (Transforming)
execute positioned ~3 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{catalyst_transforming:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{catalyst_transforming:1b}}}] run scoreboard players add @s codex 1
#
# Check SOUTH EAST for [Any item with Fortune I]
execute positioned ~2 ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:fortune"}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:fortune"}]}}}] run scoreboard players add @s codex 1
execute positioned ~2 ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:fortune"}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:fortune"}]}}}] run scoreboard players add @s codex 1
#
# Check SOUTH for Lantern
execute positioned ~ ~2 ~3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lantern",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lantern",Count:1b}}] run scoreboard players add @s codex 1
#
# Check SOUTH WEST for Glow Ink Sac
execute positioned ~-2 ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_ink_sac",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_ink_sac",Count:1b}}] run scoreboard players add @s codex 1
#
# Check WEST for [Any Staff]
execute positioned ~-4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{staff:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{staff:1b}}}] run scoreboard players add @s codex 1
#
execute if entity @s[scores={codex=7..}] at @s run function atrium:magic/runic_codex/custom_enchantments/give_concentration1_staff
execute if entity @s[scores={codex=7..}] at @s run function atrium:magic/runic_codex/rc_reset
execute if entity @s[scores={codex=7..}] at @s run advancement grant @p[distance=..7,gamemode=!spectator] only atrium:magic/enchanter_ii
scoreboard players set @s codex 0
