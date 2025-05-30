# Summon a temporary "hook" entity. I need to use this because you can't edit player coordinates directly, and the only way to teleport back to stored
# coordinates (to my knowledge) is with something like the below 'execute store' command.
summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["atrium_parallax_spell_hook"],CustomName:{text:"Parallax Spell Hook","color":"gray","italic":false}}
execute as @e[tag=atrium_parallax_spell_hook] run function atrium:triggers/magic/spells/parallax_reel_entity
# Having to switch dimension after arrival unfortunately
execute if entity @s[scores={atrium_parallax_dim=-1}] at @s in atrium:between_worlds run tp @s ~ ~ ~
execute if entity @s[scores={atrium_parallax_dim=0}] at @s in minecraft:overworld run tp @s ~ ~ ~
execute if entity @s[scores={atrium_parallax_dim=1}] at @s in minecraft:the_nether run tp @s ~ ~ ~
execute if entity @s[scores={atrium_parallax_dim=2}] at @s in minecraft:the_end run tp @s ~ ~ ~
execute if entity @s[scores={atrium_parallax_dim=3}] at @s in atrium:the_meridian run tp @s ~ ~ ~
execute if entity @s[scores={atrium_parallax_dim=4}] at @s in atrium:the_depths run tp @s ~ ~ ~
execute if entity @s[scores={atrium_parallax_dim=5}] at @s in atrium:the_abyss run tp @s ~ ~ ~
#
# Run particles + SFX for returning
execute at @s run particle minecraft:flash ~ ~ ~ 0.25 0.25 0.25 1 20
execute at @s run playsound minecraft:entity.item.pickup master @a[distance=..30] ~ ~ ~ 0.5 0.5 0.1
# Remove targeting tag
tag @s remove atrium_parallax_target
# Remove hook entity
execute at @s run kill @e[tag=atrium_parallax_spell_hook,distance=..5]
# Reset scores
scoreboard players reset @s atrium_parallax_x
scoreboard players reset @s atrium_parallax_y
scoreboard players reset @s atrium_parallax_z
scoreboard players reset @s atrium_parallax_dim
scoreboard players reset @s atrium_parallax_timer