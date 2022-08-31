# Already has caster position(s) stored from charge script
#
# Assign the player's return_spell_dim to a dimension.
#
# Spell is disabled = -1 (Disabled in Between Worlds or if there isn't a solid 2 block location below you.
execute if entity @s[predicate=atrium:in_between_worlds] run scoreboard players set @s return_spell_dim -1
execute at @s if block ~ ~-2 ~ #atrium:non_solid_blocks run scoreboard players set @s return_spell_dim -1
# Overworld = 0
execute if entity @s[predicate=atrium:in_overworld] run scoreboard players set @s return_spell_dim 0
# Nether = 1
execute if entity @s[predicate=atrium:in_nether] run scoreboard players set @s return_spell_dim 1
# The End = 2
execute if entity @s[predicate=atrium:in_end] run scoreboard players set @s return_spell_dim 2
# Meridian = 3
execute if entity @s[predicate=atrium:in_meridian] run scoreboard players set @s return_spell_dim 3
# Depths = 4
execute if entity @s[predicate=atrium:in_depths] run scoreboard players set @s return_spell_dim 4
# LATER: Abyss = 5
# execute if entity @s[predicate=atrium:in_abyss] run scoreboard players set @s return_spell_dim 5
#
# Spell cleanup
execute as @s run function atrium:magic/magicitems/spell_cast_complete
#
# Store the player's current location.
execute if entity @s[scores={return_spell_dim=0..}] store result score @s return_spell_x run data get entity @s Pos[0]
execute if entity @s[scores={return_spell_dim=0..}] store result score @s return_spell_y run data get entity @s Pos[1]
execute if entity @s[scores={return_spell_dim=0..}] store result score @s return_spell_z run data get entity @s Pos[2]
#
# SFX
#
execute if entity @s[scores={return_spell_dim=0..}] at @s anchored feet run particle minecraft:happy_villager ~ ~ ~ 0.35 0 0 0.5 50 normal
execute if entity @s[scores={return_spell_dim=0..}] at @s anchored feet run particle minecraft:happy_villager ~ ~ ~ 0 0 0.35 0.5 50 normal
execute if entity @s[scores={return_spell_dim=0..}] at @s anchored feet run summon area_effect_cloud ~ ~ ~ {Particle:"totem_of_undying",Radius:0.25f,Duration:200,Potion:"minecraft:empty"}
execute if entity @s[scores={return_spell_dim=0..}] at @s run playsound minecraft:block.rooted_dirt.step player @a[distance=..10] ~ ~ ~ 0.5 0 0.1
# Decorative plant marker.
execute if entity @s[scores={return_spell_dim=0..}] at @s anchored feet run setblock ~ ~ ~ minecraft:oxeye_daisy
execute if entity @s[scores={return_spell_dim=1..}] at @s anchored feet run setblock ~ ~ ~ minecraft:crimson_fungus
execute if entity @s[scores={return_spell_dim=3..}] at @s anchored feet run setblock ~ ~ ~ minecraft:white_tulip
execute if entity @s[scores={return_spell_dim=4..}] at @s anchored feet run setblock ~ ~ ~ minecraft:red_mushroom
# execute if entity @s[scores={return_spell_dim=5..}] at @s anchored feet run setblock ~ ~ ~ minecraft:kelp_plant?
#
execute if entity @s[scores={return_spell_dim=-1}] at @s anchored feet run playsound minecraft:block.tripwire.detach player @a[distance=..5] ~ ~ ~ 0.25 2 0.1
execute if entity @s[scores={return_spell_dim=-1}] at @s anchored feet run particle minecraft:ash ~ ~0.5 ~ 0 0 0 0 25
