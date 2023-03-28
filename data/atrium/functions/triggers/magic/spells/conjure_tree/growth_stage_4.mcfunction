execute positioned ~ ~4 ~ if block ~ ~ ~ minecraft:air run function atrium:triggers/magic/spells/conjure_tree/conjure_tree_trunk
#
execute positioned ~1 ~4 ~ if block ~ ~ ~ minecraft:air run function atrium:triggers/magic/spells/conjure_tree/conjure_tree_foliage
execute positioned ~ ~4 ~1 if block ~ ~ ~ minecraft:air run function atrium:triggers/magic/spells/conjure_tree/conjure_tree_foliage
execute positioned ~-1 ~4 ~ if block ~ ~ ~ minecraft:air run function atrium:triggers/magic/spells/conjure_tree/conjure_tree_foliage
execute positioned ~ ~4 ~-1 if block ~ ~ ~ minecraft:air run function atrium:triggers/magic/spells/conjure_tree/conjure_tree_foliage
execute positioned ~1 ~4 ~1 if block ~ ~ ~ minecraft:air run function atrium:triggers/magic/spells/conjure_tree/conjure_tree_foliage
execute positioned ~1 ~4 ~-1 if block ~ ~ ~ minecraft:air run function atrium:triggers/magic/spells/conjure_tree/conjure_tree_foliage
execute positioned ~-1 ~4 ~1 if block ~ ~ ~ minecraft:air run function atrium:triggers/magic/spells/conjure_tree/conjure_tree_foliage
execute positioned ~-1 ~4 ~-1 if block ~ ~ ~ minecraft:air run function atrium:triggers/magic/spells/conjure_tree/conjure_tree_foliage
#
# SFX
playsound minecraft:block.grass.break player @a[distance=..15] ~ ~ ~ 0.75 0.75 0.1