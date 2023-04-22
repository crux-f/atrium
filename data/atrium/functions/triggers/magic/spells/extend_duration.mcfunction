# Failure particles + sfx
execute if entity @s[tag=atrium_extend_next_potion] run particle minecraft:smoke ^ ^ ^1.5 0.03 0.03 0.03 0 50
execute if entity @s[tag=atrium_extend_next_potion] run playsound minecraft:block.redstone_torch.burnout master @a[distance=..30] ~ ~ ~ 0.3 1 0.1
# Casting particles on success
execute unless entity @s[tag=atrium_extend_next_potion] run particle minecraft:ambient_entity_effect ~ ~1 ~ 0.25 0.5 0.25 0.25 50 normal
# Casting sfx on success
execute unless entity @s[tag=atrium_extend_next_potion] run playsound minecraft:item.dye.use player @a[distance=..5] ~ ~ ~ 1 1 1
#
# Tag the player! (atrium:triggers/potions/drink_any_potion does the rest)
execute unless entity @s[tag=atrium_extend_next_potion] run tag @s add atrium_extend_next_potion
#
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete