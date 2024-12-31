# Stone sound
execute positioned ~ ~ ~-8 run playsound minecraft:entity.villager.work_fletcher block @a[distance=..8] ~ ~ ~ 0.5 0.75 0.1
#
# Place station
execute positioned ~2 ~ ~-2 run setblock ~ ~ ~ minecraft:crafting_table
execute positioned ~3 ~ ~-2 run setblock ~ ~ ~ minecraft:oak_stairs[facing=west,half=top,shape=straight,waterlogged=false]
execute positioned ~2 ~1 ~-2 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:1b,Tags:["atrium_crafting_slot"]}
# Decor
execute positioned ~3 ~1 ~-2 run summon minecraft:item_frame ~ ~ ~ {Fixed:1b,Facing:1b,Item:{id:"minecraft:iron_sword",count:1,components:{"minecraft:custom_model_data":{strings:["atrium_dagger"]},"minecraft:item_name":'{"text":"Cooking Knife"}',"minecraft:lore":['{"text":"Ideally, you aren\'t"}','{"text":"able to read this."}']}}}