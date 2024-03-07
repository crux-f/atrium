# Stone sound
execute positioned ~ ~ ~-8 run playsound minecraft:entity.villager.work_fletcher block @a[distance=..8] ~ ~ ~ 0.5 0.75 0.1
#
# Place station
execute positioned ~2 ~ ~-2 run setblock ~ ~ ~ minecraft:crafting_table
execute positioned ~3 ~ ~-2 run setblock ~ ~ ~ minecraft:oak_stairs[facing=west,half=top,shape=straight,waterlogged=false]
execute positioned ~2 ~1 ~-2 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:1b,Tags:["atrium_crafting_slot"]}
# Decor
execute positioned ~3 ~1 ~-2 run summon minecraft:item_frame ~ ~ ~ {Fixed:1b,Facing:1b,Item:{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:'{"text":"Cooking Knife","italic":false}'},CustomModelData:333138,atrium_cooking_knife:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;1727682579,-1409202174,-1682280696,582831615],Slot:"mainhand"}]}}}