# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete
# Cast SFX / Particle
function atrium:triggers/magic/spells/fizzle_spell/fizzle_fx
#
# Tag player to exclude from Fizzle Spell
tag @s add atrium_fizzle_spell_caster
# Counter a player who is holding a staff in their off hand
execute positioned ^ ^ ^2.5 as @p[predicate=atrium:player/targetable_and_visible,tag=!atrium_fizzle_spell_caster,distance=..15,nbt={Inventory:[{Slot:-106b,tag:{atrium_staff:1b}}]}] run function atrium:triggers/magic/spells/fizzle_spell/counter_staff_player
# Stop spell if it already found and dispelled a valid target.
execute unless entity @s[tag=atrium_fizzle_spell_caster] run return 1
#
# Counter a mob who is holding a staff in either hand
execute positioned ^ ^ ^2.5 as @e[type=!player,sort=nearest,distance=..15,tag=atrium_arcane_caster] run function atrium:triggers/magic/spells/fizzle_spell/counter_staff_mob
execute unless entity @s[tag=atrium_fizzle_spell_caster] run return 1
#
# Ongoing spells that can be Fizzled within 5 blocks:
#
# Air Sigil I-III
execute positioned ^ ^ ^2.5 as @e[tag=atrium_air_sigil,distance=..5] run function atrium:triggers/magic/spells/fizzle_spell/dispel_area_effect
execute unless entity @s[tag=atrium_fizzle_spell_caster] run return 1
# Blizzard = If it isn't ending in 1 second already, set it to end in 1 second.
execute positioned ^ ^ ^2.5 as @p[predicate=atrium:player/targetable_and_visible,tag=atrium_blizzard_caster,distance=..5,scores={atrium_blizzard_spell=..880}] run function atrium:triggers/magic/spells/fizzle_spell/end_blizzard
execute unless entity @s[tag=atrium_fizzle_spell_caster] run return 1
# Arcane Ward I-II
execute positioned ^ ^ ^2.5 as @e[type=minecraft:marker,tag=atrium_arcane_ward,distance=..5] run function atrium:triggers/magic/spells/fizzle_spell/dispel_temporary_entity
execute unless entity @s[tag=atrium_fizzle_spell_caster] run return 1
# Conjure Tree I-II
execute positioned ^ ^ ^2.5 as @e[type=minecraft:marker,tag=atrium_conjured_tree_block,distance=..5] run function atrium:triggers/magic/spells/fizzle_spell/dispel_temporary_entity
execute unless entity @s[tag=atrium_fizzle_spell_caster] run return 1
# Dance
execute positioned ^ ^ ^2.5 as @p[predicate=atrium:player/targetable_and_visible,tag=atrium_dance_caster,distance=..5] run function atrium:triggers/magic/spells/fizzle_spell/end_dance
execute unless entity @s[tag=atrium_fizzle_spell_caster] run return 1
# Desync I-II
execute positioned ^ ^ ^2.5 as @e[tag=atrium_desync_center,distance=..5] run function atrium:triggers/magic/spells/fizzle_spell/dispel_area_effect
execute positioned ^ ^ ^2.5 as @e[tag=atrium_desync_circle,distance=..5] run function atrium:triggers/magic/spells/fizzle_spell/dispel_area_effect
execute unless entity @s[tag=atrium_fizzle_spell_caster] run return 1
# Earth Sigil I-III
execute positioned ^ ^ ^2.5 as @e[tag=atrium_earth_sigil,distance=..5] run function atrium:triggers/magic/spells/fizzle_spell/dispel_area_effect
execute unless entity @s[tag=atrium_fizzle_spell_caster] run return 1
# Eruption
execute positioned ^ ^ ^2.5 as @e[tag=atrium_eruption_spell,distance=..5] run function atrium:triggers/magic/spells/fizzle_spell/dispel_temporary_entity
execute unless entity @s[tag=atrium_fizzle_spell_caster] run return 1
# Extend Duration I-II
execute positioned ^ ^ ^2.5 as @p[predicate=atrium:player/targetable_and_visible,tag=atrium_extend_next_potion,distance=..5] run function atrium:triggers/magic/spells/fizzle_spell/end_extend_duration
execute unless entity @s[tag=atrium_fizzle_spell_caster] run return 1
# Fire Sigil I-III
execute positioned ^ ^ ^2.5 as @e[tag=atrium_fire_sigil,distance=..5] run function atrium:triggers/magic/spells/fizzle_spell/dispel_area_effect
execute unless entity @s[tag=atrium_fizzle_spell_caster] run return 1
# Flare I-II
execute positioned ^ ^ ^2.5 as @e[tag=atrium_flare_spell,distance=..5] run function atrium:triggers/magic/spells/fizzle_spell/dispel_temporary_entity
execute unless entity @s[tag=atrium_fizzle_spell_caster] run return 1
# Hush
execute positioned ^ ^ ^2.5 as @p[predicate=atrium:player/targetable_and_visible,scores={atrium_hiding=1..},distance=..5] run function atrium:triggers/magic/spells/fizzle_spell/end_hush
execute unless entity @s[tag=atrium_fizzle_spell_caster] run return 1
# Locate Ore I-II
execute positioned ^ ^ ^2.5 as @e[type=minecraft:marker,tag=atrium_locate_ore_marker,distance=..5] run function atrium:triggers/magic/spells/fizzle_spell/dispel_temporary_entity
execute unless entity @s[tag=atrium_fizzle_spell_caster] run return 1
# Meteor
execute positioned ^ ^ ^2.5 as @e[type=minecraft:fireball,tag=atrium_meteor_spell,distance=..5] run function atrium:triggers/magic/spells/fizzle_spell/end_meteor
execute unless entity @s[tag=atrium_fizzle_spell_caster] run return 1
# Natural Armor I-III
execute positioned ^ ^ ^2.5 as @p[predicate=atrium:player/targetable_and_visible,tag=atrium_natural_armor_target,distance=..5] run function atrium:triggers/magic/spells/fizzle_spell/end_natural_armor
execute unless entity @s[tag=atrium_fizzle_spell_caster] run return 1
# Song
execute positioned ^ ^ ^2.5 as @e[type=minecraft:item,tag=atrium_floating_disc,distance=..5] run function atrium:triggers/magic/spells/fizzle_spell/end_song
execute unless entity @s[tag=atrium_fizzle_spell_caster] run return 1
# Space Sigil I-III
execute positioned ^ ^ ^2.5 as @e[tag=atrium_space_sigil,distance=..5] run function atrium:triggers/magic/spells/fizzle_spell/dispel_area_effect
execute unless entity @s[tag=atrium_fizzle_spell_caster] run return 1
# Time Sigil I-III
execute positioned ^ ^ ^2.5 as @e[tag=atrium_time_sigil,distance=..5] run function atrium:triggers/magic/spells/fizzle_spell/dispel_area_effect
execute unless entity @s[tag=atrium_fizzle_spell_caster] run return 1
# Undercurrent I-II
execute positioned ^ ^ ^2.5 as @e[tag=atrium_fire_sigil,distance=..5] run function atrium:triggers/magic/spells/fizzle_spell/dispel_temporary_entity
execute unless entity @s[tag=atrium_fizzle_spell_caster] run return 1
# Water Sigil I-III
execute positioned ^ ^ ^2.5 as @e[tag=atrium_undercurrent_spell,distance=..5] run function atrium:triggers/magic/spells/fizzle_spell/dispel_area_effect
execute unless entity @s[tag=atrium_fizzle_spell_caster] run return 1
# If you get to this point without finding a target, tell the caster about it.
tellraw @s {"text":"Nothing to fizzle!","italic":true,"color":"gray"}
# If you get to the end without finding a target, remove the tag
tag @s remove atrium_fizzle_spell_caster