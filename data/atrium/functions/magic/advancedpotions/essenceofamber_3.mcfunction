# Check WEST for mixer item.
# THE THIRD ITEM ALWAYS HAS TO BE ..2 FOR DUMB REASONS DO NOT CHANGE THIS OR I WILL STEAL YOUR SHOES
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..2,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:fire_resistance"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..2,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:fire_resistance"}}}] run execute at @e[tag=empoweredcauldron] run function atrium:magic/advancedpotions/essenceofamber_4
