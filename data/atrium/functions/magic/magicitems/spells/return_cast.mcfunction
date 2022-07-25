# Summon a temporary "hook" entity. I need to use this because you can't edit player coordinates directly, and the only way to teleport back to stored
# coordinates (to my knowledge) is with something like the below 'execute store' command.
summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["return_spell_hook"],CustomName:'{"text":"Return Spell Hook","color":"green","italic":false}'}
execute store result entity @e[limit=1,tag=return_spell_hook] Pos[0] double 1 run scoreboard players get @s return_spell_x
execute store result entity @e[limit=1,tag=return_spell_hook] Pos[1] double 1 run scoreboard players get @s return_spell_y
execute store result entity @e[limit=1,tag=return_spell_hook] Pos[2] double 1 run scoreboard players get @s return_spell_z
#
# Spell cleanup
function atrium:magic/magicitems/spell_cast_complete
# Remove 1 Garden Shard (casting component cost)
clear @s minecraft:amethyst_shard{garden_shard:1b} 1
#
# SFX
#
execute at @s anchored feet run particle minecraft:spore_blossom_air ~ ~1.25 ~ 0 0 0 2 50 normal
execute at @s anchored feet run particle minecraft:flash ~ ~1.25 ~ 0 0 0 1 50 normal
execute at @s run playsound minecraft:block.ender_chest.open player @a[distance=..25] ~ ~ ~ 1 0.25 0.1
#
# Teleport the player to the temporary hook entity (1.544 blocks below it for animation purposes)
# Having to switch dimension after arrival unfortunately
# Doing dimension switch for each so you dont get that annoying bounce to the overworld
execute if entity @s[predicate=atrium:in_overworld] in minecraft:overworld at @e[limit=1,tag=return_spell_hook] positioned ~0.5 ~-1.544 ~0.5 run tp @s ~ ~ ~
execute if entity @s[predicate=atrium:in_nether] in minecraft:the_nether at @e[limit=1,tag=return_spell_hook] positioned ~0.5 ~-1.544 ~0.5 run tp @s ~ ~ ~
execute if entity @s[predicate=atrium:in_end] in minecraft:the_end at @e[limit=1,tag=return_spell_hook] positioned ~0.5 ~-1.544 ~0.5 run tp @s ~ ~ ~
execute if entity @s[predicate=atrium:in_meridian] in atrium:meridian at @e[limit=1,tag=return_spell_hook] positioned ~0.5 ~-1.544 ~0.5 run tp @s ~ ~ ~
execute if entity @s[predicate=atrium:in_depths] in atrium:depths at @e[limit=1,tag=return_spell_hook] positioned ~0.5 ~-1.544 ~0.5 run tp @s ~ ~ ~
execute if entity @s[scores={return_spell_dim=0}] at @s in minecraft:overworld run tp @s ~ ~ ~
execute if entity @s[scores={return_spell_dim=1}] at @s in minecraft:the_nether run tp @s ~ ~ ~
execute if entity @s[scores={return_spell_dim=2}] at @s in minecraft:the_end run tp @s ~ ~ ~
execute if entity @s[scores={return_spell_dim=3}] at @s in atrium:meridian run tp @s ~ ~ ~
execute if entity @s[scores={return_spell_dim=4}] at @s in atrium:depths run tp @s ~ ~ ~
#
# Tag the player for cool appearing animation
tag @s add return_spell_appearing
# (I am also using the return_spell_dim score as the timer, that way the spell is also completely disabled until the spell is complete)
scoreboard players set @s return_spell_dim 100
#
# Remove the teleport marker
execute at @s run kill @e[tag=return_spell_hook,distance=..3]
# Run the return_repeat function until the appearing animation is complete. Spellcasting cleanup is handled there.
execute as @s run function atrium:magic/magicitems/spells/return_repeat
