#
# Crafting Components
#
# Start Cinder Solution - Check NORTH for Magma Cream
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:magma_cream",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:magma_cream",Count:1b}}] run function atrium:formula_crafting/alchemy/a_recipes/cinder_solution
