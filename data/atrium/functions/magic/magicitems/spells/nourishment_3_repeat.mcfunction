# WHEAT - Splitting out these into other functions because dear god magical farming is difficult
execute at @e[tag=nourishment_marker] if block ~ ~0.0625 ~ minecraft:wheat run function atrium:magic/magicitems/spells/nourishment_spell/nourishment_wheat_c
# -1 x - Wheat
execute at @e[tag=nourishment_marker] if block ~-1 ~0.0625 ~ minecraft:wheat run function atrium:magic/magicitems/spells/nourishment_spell/nourishment_wheat_x-1
# +1 x - Wheat
execute at @e[tag=nourishment_marker] if block ~1 ~0.0625 ~ minecraft:wheat run function atrium:magic/magicitems/spells/nourishment_spell/nourishment_wheat_x1
# -1 z - Wheat
execute at @e[tag=nourishment_marker] if block ~ ~0.0625 ~-1 minecraft:wheat run function atrium:magic/magicitems/spells/nourishment_spell/nourishment_wheat_z-1
# +1 z - Wheat
execute at @e[tag=nourishment_marker] if block ~ ~0.0625 ~1 minecraft:wheat run function atrium:magic/magicitems/spells/nourishment_spell/nourishment_wheat_z1
# POTATOES - Seriously this is a million commands im doing this for lag management
execute at @e[tag=nourishment_marker] if block ~ ~0.0625 ~ minecraft:potatoes run function atrium:magic/magicitems/spells/nourishment_spell/nourishment_potatoes_c
# -1 x - Potatoes
execute at @e[tag=nourishment_marker] if block ~-1 ~0.0625 ~ minecraft:potatoes run function atrium:magic/magicitems/spells/nourishment_spell/nourishment_potatoes_x-1
# +1 x - Potatoes
execute at @e[tag=nourishment_marker] if block ~1 ~0.0625 ~ minecraft:potatoes run function atrium:magic/magicitems/spells/nourishment_spell/nourishment_potatoes_x1
# -1 z - Potatoes
execute at @e[tag=nourishment_marker] if block ~ ~0.0625 ~-1 minecraft:potatoes run function atrium:magic/magicitems/spells/nourishment_spell/nourishment_potatoes_z-1
# +1 z - Potatoes
execute at @e[tag=nourishment_marker] if block ~ ~0.0625 ~1 minecraft:potatoes run function atrium:magic/magicitems/spells/nourishment_spell/nourishment_potatoes_z1
# CARROTS - can you imagine this all in one file the server would kill me
execute at @e[tag=nourishment_marker] if block ~ ~0.0625 ~ minecraft:carrots run function atrium:magic/magicitems/spells/nourishment_spell/nourishment_carrots_c
# -1 x - carrots
execute at @e[tag=nourishment_marker] if block ~-1 ~0.0625 ~ minecraft:carrots run function atrium:magic/magicitems/spells/nourishment_spell/nourishment_carrots_x-1
# +1 x - carrots
execute at @e[tag=nourishment_marker] if block ~1 ~0.0625 ~ minecraft:carrots run function atrium:magic/magicitems/spells/nourishment_spell/nourishment_carrots_x1
# -1 z - carrots
execute at @e[tag=nourishment_marker] if block ~ ~0.0625 ~-1 minecraft:carrots run function atrium:magic/magicitems/spells/nourishment_spell/nourishment_carrots_z-1
# +1 z - carrots
execute at @e[tag=nourishment_marker] if block ~ ~0.0625 ~1 minecraft:carrots run function atrium:magic/magicitems/spells/nourishment_spell/nourishment_carrots_z1
# BEETROOTS - i almost didnt include these because of my deep disrespect for beets
execute at @e[tag=nourishment_marker] if block ~ ~0.0625 ~ minecraft:beetroots run function atrium:magic/magicitems/spells/nourishment_spell/nourishment_beets_c
# -1 x - Beetroots
execute at @e[tag=nourishment_marker] if block ~-1 ~0.0625 ~ minecraft:beetroots run function atrium:magic/magicitems/spells/nourishment_spell/nourishment_beets_x-1
# +1 x - Beetroots
execute at @e[tag=nourishment_marker] if block ~1 ~0.0625 ~ minecraft:beetroots run function atrium:magic/magicitems/spells/nourishment_spell/nourishment_beets_x1
# -1 z - Beetroots
execute at @e[tag=nourishment_marker] if block ~ ~0.0625 ~-1 minecraft:beetroots run function atrium:magic/magicitems/spells/nourishment_spell/nourishment_beets_z-1
# +1 z - Beetroots
execute at @e[tag=nourishment_marker] if block ~ ~0.0625 ~1 minecraft:beetroots run function atrium:magic/magicitems/spells/nourishment_spell/nourishment_beets_z1
execute if entity @a[tag=nourishment_caster,scores={nourish_spell=24..}] run kill @e[tag=nourishment_marker]
execute if entity @a[tag=nourishment_caster,scores={nourish_spell=24..}] run tag @a[tag=nourishment_caster] remove nourishment_caster
execute if entity @a[scores={nourish_spell=24..}] run scoreboard players set @a nourish_spell 0
scoreboard players add @a[tag=nourishment_caster] nourish_spell 1
execute if entity @e[tag=nourishment_caster] run schedule function atrium:magic/magicitems/spells/nourishment_3_repeat 1s
