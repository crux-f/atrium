# Set coordinates
#
execute store result entity @s Pos[0] double 1 run scoreboard players get @e[tag=atrium_parallax_target,limit=1,sort=nearest] atrium_parallax_x
execute store result entity @s Pos[1] double 1 run scoreboard players get @e[tag=atrium_parallax_target,limit=1,sort=nearest] atrium_parallax_y
execute store result entity @s Pos[2] double 1 run scoreboard players get @e[tag=atrium_parallax_target,limit=1,sort=nearest] atrium_parallax_z
# Doing dimension switch for each so you dont get that annoying bounce to the overworld
# Teleport the entity to the hook
execute if entity @s[predicate=atrium:in_between_worlds] in atrium:between_worlds at @s positioned ~0.5 ~ ~0.5 run tp @e[tag=atrium_parallax_target,limit=1,sort=random] ~ ~ ~
execute if entity @s[predicate=atrium:in_overworld] in minecraft:overworld at @s positioned ~0.5 ~ ~0.5 run tp @e[tag=atrium_parallax_target,limit=1,sort=random] ~ ~ ~
execute if entity @s[predicate=atrium:in_the_nether] in minecraft:the_nether at @s positioned ~0.5 ~ ~0.5 run tp @e[tag=atrium_parallax_target,limit=1,sort=random] ~ ~ ~
execute if entity @s[predicate=atrium:in_the_end] in minecraft:the_end at @s positioned ~0.5 ~ ~0.5 run tp @e[tag=atrium_parallax_target,limit=1,sort=random] ~ ~ ~
execute if entity @s[predicate=atrium:in_the_meridian] in atrium:the_meridian at @s positioned ~0.5 ~ ~0.5 run tp @e[tag=atrium_parallax_target,limit=1,sort=random] ~ ~ ~
execute if entity @s[predicate=atrium:in_the_depths] in atrium:the_depths at @s positioned ~0.5 ~ ~0.5 run tp @e[tag=atrium_parallax_target,limit=1,sort=random] ~ ~ ~
# execute if entity @s[predicate=atrium:in_the_abyss] in atrium:the_abyss at @s positioned ~0.5 ~ ~0.5 run tp @e[tag=atrium_parallax_target,limit=1,sort=random] ~ ~ ~
