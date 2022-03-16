#
# Check NORTH EAST for Water Bottle
execute positioned ~3 ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water"}}}] run scoreboard players add @s infusion 1
#
# Check EAST for Dull Crystal
execute positioned ~4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{dull_crystal:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{dull_crystal:1b}}}] run scoreboard players add @s infusion 1
#
# Check SOUTH EAST for Blue Glazed Terracotta
execute positioned ~3 ~2 ~3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blue_glazed_terracotta",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blue_glazed_terracotta",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check SOUTH for Subdued Crystal
execute positioned ~ ~2 ~4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{subdued_crystal:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{subdued_crystal:1b}}}] run scoreboard players add @s infusion 1
#
# Check SOUTH WEST for Water Bottle
execute positioned ~-3 ~2 ~3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water"}}}] run scoreboard players add @s infusion 1
#
# Check WEST for Dull Crystal
execute positioned ~-4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{dull_crystal:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{dull_crystal:1b}}}] run scoreboard players add @s infusion 1
#
# Check NORTH WEST for Blue Candle
execute positioned ~-3 ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blue_candle",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blue_candle",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER NORTH for Spirit Stone
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{spirit_stone:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{spirit_stone:1b}}}] run scoreboard players add @s infusion 1
#
# Check CENTER EAST for Dull Crystal
execute positioned ~2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{dull_crystal:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{dull_crystal:1b}}}] run scoreboard players add @s infusion 1
#
# Check CENTER SOUTH for Spirit Stone
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{spirit_stone:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{spirit_stone:1b}}}] run scoreboard players add @s infusion 1
#
# Check CENTER WEST for Dull Crystal
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{dull_crystal:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{dull_crystal:1b}}}] run scoreboard players add @s infusion 1
#
execute if entity @s[scores={infusion=11..}] at @s run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:blue_stained_glass",Count:1b,tag:{display:{Name:'{"text":"Calm Crystal","color":"blue","italic":false}',Lore:['{"text":"It feels like chilled"}','{"text":"glass. You can almost"}','{"text":"feel it contemplating."}']},HideFlags:1,calm_crystal:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:2,Operation:0,UUID:[I;-2123071529,1345407694,-1756066510,1972665159],Slot:"mainhand"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:1,Operation:0,UUID:[I;1626373228,-1354218532,-1339331348,773807433],Slot:"offhand"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:4,Operation:0,UUID:[I;-1101675602,-1514387537,-1111860716,857932385],Slot:"mainhand"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;-2058357322,1857374624,-1166773954,1459387628],Slot:"offhand"}]}}}
execute if entity @s[scores={infusion=11..}] at @s run function atrium:magic/infusion/infusion_reset
scoreboard players set @s infusion 0
