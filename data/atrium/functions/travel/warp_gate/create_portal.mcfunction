# Reset scores
scoreboard players set @e[tag=warp_gate] warp_gate 0
#
execute if entity @a[tag=gate_user,predicate=atrium:in_overworld,distance=..12] positioned ~-5 ~5 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{LodestoneDimension:"minecraft:overworld"}}}] run function atrium:travel/warp_gate/overworld_tp
execute if entity @a[tag=gate_user,predicate=atrium:in_nether,distance=..12] positioned ~-5 ~5 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{LodestoneDimension:"minecraft:the_nether"}}}] run function atrium:travel/warp_gate/nether_tp
# execute if entity @a[tag=gate_user,predicate=atrium:in_end,distance=..12] positioned ~-5 ~5 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{LodestoneDimension:"minecraft:the_end"}}}] run function atrium:travel/warp_gate/end_tp
execute if entity @a[tag=gate_user,predicate=atrium:in_between_worlds,distance=..12] positioned ~-5 ~5 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{LodestoneDimension:"atrium:between_worlds"}}}] run function atrium:travel/warp_gate/between_worlds_tp
execute if entity @a[tag=gate_user,predicate=atrium:in_depths,distance=..12] positioned ~-5 ~5 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{LodestoneDimension:"atrium:depths"}}}] run function atrium:travel/warp_gate/depths_tp
execute if entity @a[tag=gate_user,predicate=atrium:in_meridian,distance=..12] positioned ~-5 ~5 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{LodestoneDimension:"atrium:meridian"}}}] run function atrium:travel/warp_gate/meridian_tp
# execute if entity @s[tag=gate_user,predicate=atrium:in_abyss,distance=..12] positioned ~-5 ~5 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{LodestoneDimension:"atrium:abyss"}}}] run function atrium:travel/warp_gate/abyss_tp
#
# Remove tag
tag @a[tag=gate_user,scores={charge=..0}] remove gate_user