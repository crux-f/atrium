# Set coordinates
#
execute store result entity @s Pos[0] double 1 run scoreboard players get @a[tag=returning,limit=1] return_spell_x
execute store result entity @s Pos[1] double 1 run scoreboard players get @a[tag=returning,limit=1] return_spell_y
execute store result entity @s Pos[2] double 1 run scoreboard players get @a[tag=returning,limit=1] return_spell_z
# Doing dimension switch for each so you dont get that annoying bounce to the overworld
# Teleport the player to the temporary hook entity (1.544 blocks below it for animation purposes)
execute if entity @s[predicate=atrium:in_overworld] in minecraft:overworld at @s positioned ~0.5 ~-1.544 ~0.5 run tp @a[tag=returning,limit=1] ~ ~ ~
execute if entity @s[predicate=atrium:in_nether] in minecraft:the_nether at @s positioned ~0.5 ~-1.544 ~0.5 run tp @a[tag=returning,limit=1] ~ ~ ~
execute if entity @s[predicate=atrium:in_end] in minecraft:the_end at @s positioned ~0.5 ~-1.544 ~0.5 run tp @a[tag=returning,limit=1] ~ ~ ~
execute if entity @s[predicate=atrium:in_meridian] in atrium:meridian at @s positioned ~0.5 ~-1.544 ~0.5 run tp @a[tag=returning,limit=1] ~ ~ ~
execute if entity @s[predicate=atrium:in_depths] in atrium:depths at @s positioned ~0.5 ~-1.544 ~0.5 run tp @a[tag=returning,limit=1] ~ ~ ~
# Remove tag
tag @a remove returning