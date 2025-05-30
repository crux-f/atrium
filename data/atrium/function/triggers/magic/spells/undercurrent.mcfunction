# Summon anchor entity if caster is in water and the block beneath them is also water
execute if predicate atrium:entity/is_in_water if block ~ ~-1 ~ minecraft:water if data entity @s {Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}]} run effect give @s dolphins_grace 10 0 false
execute if predicate atrium:entity/is_in_water if block ~ ~-1 ~ minecraft:water if predicate atrium:player/is_sneaking run summon minecraft:marker ~ ~-1 ~ {Tags:["atrium_undercurrent_anchor","atrium_down_column"],CustomName:{text:"Undercurrent Spell Anchor","color":"blue","italic":false}}
execute if predicate atrium:entity/is_in_water if block ~ ~-1 ~ minecraft:water unless predicate atrium:player/is_sneaking run summon minecraft:marker ~ ~-1 ~ {Tags:["atrium_undercurrent_anchor","atrium_up_column"],CustomName:{text:"Undercurrent Spell Anchor","color":"blue","italic":false}}
#
# Run repeat function
execute if entity @e[tag=atrium_undercurrent_anchor] run function atrium:triggers/magic/spells/undercurrent_repeat
# Casting Particles
execute if entity @e[tag=atrium_undercurrent_anchor] run particle minecraft:bubble_column_up ~ ~ ~ 0.25 3 0.25 0.5 75
# Casting SFX
execute if entity @e[tag=atrium_undercurrent_anchor] run playsound minecraft:entity.generic.swim player @a[distance=..10] ~ ~ ~ 0.25 0.35 0.1
#
# If there was no valid target, run the particles + sfx for failure.
execute unless entity @e[tag=atrium_undercurrent_anchor,distance=..3] run function atrium:triggers/magic/spell_failure_effects
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete