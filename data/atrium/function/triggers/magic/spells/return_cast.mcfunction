# Add 'Returning' Tag
tag @s add atrium_return_target
# Summon a temporary "hook" entity. I need to use this because you can't edit player coordinates directly, and the only way to teleport back to stored
# coordinates (to my knowledge) is with something like the below 'execute store' command.
summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["atrium_return_spell_hook"],CustomName:'{"text":"Return Spell Hook","color":"green","italic":false}'}
execute as @e[tag=atrium_return_spell_hook] run function atrium:triggers/magic/spells/return_reel_player
#
# SFX
#
execute at @s anchored feet run particle minecraft:spore_blossom_air ~ ~1.25 ~ 0 0 0 2 50 normal
execute at @s anchored feet run particle minecraft:flash ~ ~1.25 ~ 0 0 0 1 50 normal
execute at @s run playsound minecraft:block.ender_chest.open player @a[distance=..25] ~ ~ ~ 1 0.25 0.1
#
# Having to switch dimension after arrival unfortunately
execute if entity @s[scores={atrium_return_dim=0}] at @s in minecraft:overworld run tp @s ~ ~ ~
# execute if entity @s[scores={atrium_return_dim=1}] at @s in minecraft:the_nether run tp @s ~ ~ ~
execute if entity @s[scores={atrium_return_dim=2}] at @s in minecraft:the_end run tp @s ~ ~ ~
execute if entity @s[scores={atrium_return_dim=3}] at @s in atrium:the_meridian run tp @s ~ ~ ~
execute if entity @s[scores={atrium_return_dim=4}] at @s in atrium:the_depths run tp @s ~ ~ ~
execute if entity @s[scores={atrium_return_dim=5}] at @s in atrium:the_abyss run tp @s ~ ~ ~
#
# Tag the player for cool appearing animation
tag @s add atrium_return_spell_appearing
# (I am also using the return_spell_dim score as the timer, that way the spell is also completely disabled until the spell is complete)
scoreboard players set @s atrium_return_dim 100
#
# Remove the teleport marker
execute at @s run kill @e[tag=atrium_return_spell_hook,distance=..3]
# Run the return_repeat function until the appearing animation is complete. Spellcasting cleanup is handled there.
execute as @s run function atrium:triggers/magic/spells/return_repeat
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete
