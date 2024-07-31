# Casting particles
particle minecraft:block{block_state:"minecraft:mossy_cobblestone"} ~ ~ ~ 0.3 1.25 0.3 0.05 70
# Casting sfx
execute unless entity @s[predicate=atrium:player/inventory/wearing_any_armor] run playsound minecraft:block.lodestone.place player @a[distance=..15] ~ ~ ~ 1 1.5 0.1
# Failure to cast sfx
execute if entity @s[predicate=atrium:player/inventory/wearing_any_armor] run playsound minecraft:block.redstone_torch.burnout player @a[distance=..15] ~ ~ ~ 0.35 1.5 0.1
#
# Tag the caster if they aren't wearing armor
execute unless entity @s[predicate=atrium:player/inventory/wearing_any_armor] run tag @s add atrium_natural_armor_target
#
# Give the caster Resistence III. Duration depends on level of staff used.
execute unless entity @s[predicate=atrium:player/inventory/wearing_any_armor] if data entity @s {Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:1b}}}]} run effect give @s resistance 900 2 true
execute unless entity @s[predicate=atrium:player/inventory/wearing_any_armor] if data entity @s {Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}]} run effect give @s resistance 1800 2 true
execute unless entity @s[predicate=atrium:player/inventory/wearing_any_armor] if data entity @s {Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}]} run effect give @s resistance 3600 2 true
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete
