# Creates a light!
execute if data entity @s {Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}]} positioned ~ ~3 ~ if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_entity","atrium_temporary_block","atrium_flare_spell","atrium_particle"],data:{Level:1}}
execute if data entity @s {Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}]} positioned ~ ~3 ~ if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_entity","atrium_temporary_block","atrium_flare_spell","atrium_particle"],data:{Level:2}}
#
# Fail Particles
execute unless entity @e[tag=atrium_flare_spell,distance=..5] run particle minecraft:smoke ~ ~1.25 ~ 0.25 0.25 0.25 0 15 normal
# Fail SFX
execute unless entity @e[tag=atrium_flare_spell,distance=..5] run playsound minecraft:block.redstone_torch.burnout player @a[distance=..10] ~ ~ ~ 0.25 1 0.1
#
# Success Particles
execute at @e[tag=atrium_flare_spell,distance=..5] run particle minecraft:firework ~ ~ ~ 0 0 0 0.025 25 normal
# Success SFX
execute at @e[tag=atrium_flare_spell,distance=..5] run playsound minecraft:ui.toast.in player @s ~ ~ ~ 1.25 0.75 0.75
#
# Set the timer (how long until temporary_entity_manager removes the light):
# Level 1 = 2 minutes / 2400 ticks
# Level 2 = 5 minutes / 6000 ticks
execute if data entity @s {Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}]} run scoreboard players set @e[tag=atrium_flare_spell,distance=..5] charge -2400
execute if data entity @s {Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}]} run scoreboard players set @e[tag=atrium_flare_spell,distance=..5] charge -6000
#
# Create the light block
execute at @e[tag=atrium_flare_spell,distance=..5] run setblock ~ ~ ~ minecraft:light[level=15]
# Run the repeat script to make the light slowly fade over the course of its duration
execute as @e[tag=atrium_flare_spell] if data entity @s {data:{Level:1}} run schedule function atrium:triggers/magic/spells/flare_repeat 160t
execute as @e[tag=atrium_flare_spell] if data entity @s {data:{Level:2}} run schedule function atrium:triggers/magic/spells/flare_repeat 400t
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete