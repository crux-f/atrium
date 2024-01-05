# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: infusion_base_item handles the first item - this script will handle any remaining item checks.
#
# Check NORTH WEST for Emerald
execute positioned ~-3 ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check NORTH EAST for Emerald
execute positioned ~3 ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER NORTH for Inert Focus
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_inert_focus:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_inert_focus:1b}}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER WEST for Stone
execute positioned ~-2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER EAST for Stone
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER SOUTH for Stick
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stick",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stick",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH WEST for Glow Lichen
execute positioned ~-3 ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_lichen",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_lichen",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH EAST for Glow Lichen
execute positioned ~3 ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_lichen",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_lichen",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH for Stick
execute positioned ~ ~ ~4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stick",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stick",Count:1b}}] run scoreboard players add @s valid_ingredients 1
#
execute if entity @s[scores={valid_ingredients=9..}] at @s run summon item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:diamond_hoe",Count:1b,tag:{display:{Name:'{"text":"Staff of Earth","italic":false}',Lore:['{"text":"◇ Earth Sigil I","color":"gray","italic":false}','{"text":"◇ Natural Armor I","color":"gray","italic":false}','{"text":" "}','{"text":"When in Off Hand:","color":"gray","italic":false}','{"text":"+1 Casting Power","color":"blue","italic":false}']},CustomModelData:333061,atrium_staff:1b,atrium_staff_lv:1b,atrium_earth_staff:1b,atrium_chargeable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;637717026,1710441391,-1943706047,783506473],Slot:"mainhand"}]}}}
execute if entity @s[scores={valid_ingredients=9..}] at @s run function atrium:formula_crafting/infusion/infusion_reset
execute if entity @s[scores={valid_ingredients=9..}] run advancement grant @p[distance=..10,gamemode=!spectator] only atrium:magic/arcane_apprentice
scoreboard players set @s valid_ingredients 0
