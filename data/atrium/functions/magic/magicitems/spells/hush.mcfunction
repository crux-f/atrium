# Remove 1 Redstone Dust (casting component cost)
clear @s minecraft:redstone 1
# Spell cleanup
execute as @s run function atrium:magic/magicitems/spell_cast_complete
#
# SFX
execute at @s at @a[distance=..20,predicate=atrium:if_sneaking] run particle minecraft:end_rod ~ ~ ~ 0 0.25 0 0.1 20
execute at @s at @a[distance=..20,predicate=atrium:if_sneaking] run playsound minecraft:block.wool.step player @a[distance=..2] ~ ~ ~ 1 0.5 0.1
#
# Set all the 'hush_spell' score of all sneaking players within 20 blocks to 1
execute at @s as @a[distance=..20,predicate=atrium:if_sneaking] run scoreboard players set @s hush_spell 1
#
# If someone has hush_spell 1, start the repeat script
execute if entity @a[scores={hush_spell=1..}] run function atrium:magic/magicitems/spells/hush_repeat