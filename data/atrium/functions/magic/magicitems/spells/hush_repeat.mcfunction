# Give each affected player particles if they're sneaking
execute at @a[scores={hush_spell=1..},predicate=atrium:if_sneaking] run particle minecraft:mycelium ~ ~ ~ 0.1 0 0.1 0.1 15
#
# Give each affected player Speed I if they're sneaking
execute as @a[scores={hush_spell=1..},predicate=atrium:if_sneaking] run effect give @s speed 2 0 false
# Give each affected player Haste I if they're sneaking
execute as @a[scores={hush_spell=1..},predicate=atrium:if_sneaking] run effect give @s haste 2 0 false
#
# Add 1 to each target's hush_spell score
scoreboard players add @a[scores={hush_spell=1..}] hush_spell 1
#
# Repeat each second unless someone has 'hush_spell' 180 or higher (lasts 3 minutes)
execute unless entity @a[scores={hush_spell=180..}] run schedule function atrium:magic/magicitems/spells/hush_repeat 1s
#
# Reset score after spell ends
scoreboard players set @a[scores={hush_spell=180..}] hush_spell 0