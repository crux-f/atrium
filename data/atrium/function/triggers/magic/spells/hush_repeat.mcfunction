# Give each affected player particles if they're sneaking
execute at @a[scores={atrium_hiding=1..},predicate=atrium:player/is_sneaking] run particle minecraft:mycelium ~ ~ ~ 0.1 0 0.1 0.1 15
#
# Give each affected player Speed I if they're sneaking
execute as @a[scores={atrium_hiding=1..},predicate=atrium:player/is_sneaking] run effect give @s speed 2 1 false
# Give each affected player Haste I if they're sneaking
execute as @a[scores={atrium_hiding=1..},predicate=atrium:player/is_sneaking] run effect give @s haste 2 1 false
#
# Add 1 to each target's atrium_hiding score
scoreboard players add @a[scores={atrium_hiding=1..}] atrium_hiding 1
#
# Repeat each second unless someone has 'atrium_hiding' 180 or higher (lasts 3 minutes)
execute unless entity @a[scores={atrium_hiding=180..}] run schedule function atrium:triggers/magic/spells/hush_repeat 1s
#
# Reset score after spell ends
execute if entity @a[scores={atrium_hiding=180..}] run scoreboard players reset @a atrium_hiding