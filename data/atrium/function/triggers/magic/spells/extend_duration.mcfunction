# Failure particles + sfx
execute if entity @s[tag=atrium_extend_next_potion] run function atrium:triggers/magic/spell_failure_effects
# Casting particles on success
execute unless entity @s[tag=atrium_extend_next_potion] run particle minecraft:entity_effect{color:-1} ~ ~1 ~ 0.25 0.5 0.25 0.25 50 normal
# Casting sfx on success
execute unless entity @s[tag=atrium_extend_next_potion] run playsound minecraft:item.dye.use player @a[distance=..5] ~ ~ ~ 1 1 1
#
# Tag the player! (atrium:triggers/potions/drink_any_potion does the rest)
execute unless entity @s[tag=atrium_extend_next_potion] run tag @s add atrium_extend_next_potion
# If you're using a level 3 staff to cast this, give them the additional tag to work on level 3 potions.
execute if entity @s[tag=atrium_extend_next_potion] if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}}} run tag @s add atrium_extend_next_powerful_potion
#
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete