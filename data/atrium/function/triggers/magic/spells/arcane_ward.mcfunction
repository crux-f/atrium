# Creates a wall of force
execute anchored eyes positioned ^ ^ ^3 if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_block","atrium_temporary_entity","atrium_arcane_ward","atrium_particle","atrium_portal_aura"]}
execute anchored eyes positioned ^1 ^ ^3 if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_block","atrium_temporary_entity","atrium_arcane_ward","atrium_particle","atrium_portal_aura"]}
execute anchored eyes positioned ^-1 ^ ^3 if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_block","atrium_temporary_entity","atrium_arcane_ward","atrium_particle","atrium_portal_aura"]}
execute anchored eyes positioned ^ ^1 ^3 if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_block","atrium_temporary_entity","atrium_arcane_ward","atrium_particle","atrium_portal_aura"]}
execute anchored eyes positioned ^1 ^1 ^3 if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_block","atrium_temporary_entity","atrium_arcane_ward","atrium_particle","atrium_portal_aura"]}
execute anchored eyes positioned ^-1 ^1 ^3 if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_block","atrium_temporary_entity","atrium_arcane_ward","atrium_particle","atrium_portal_aura"]}
execute anchored eyes positioned ^ ^-1 ^3 if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_block","atrium_temporary_entity","atrium_arcane_ward","atrium_particle","atrium_portal_aura"]}
execute anchored eyes positioned ^1 ^-1 ^3 if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_block","atrium_temporary_entity","atrium_arcane_ward","atrium_particle","atrium_portal_aura"]}
execute anchored eyes positioned ^-1 ^-1 ^3 if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_block","atrium_temporary_entity","atrium_arcane_ward","atrium_particle","atrium_portal_aura"]}
#
# LEVEL 3 ONLY: Adds 1 block on all sides
# top + bottom
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]}] anchored eyes positioned ^ ^2 ^3 if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_block","atrium_temporary_entity","atrium_arcane_ward","atrium_particle","atrium_portal_aura"]}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]}] anchored eyes positioned ^ ^-2 ^3 if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_block","atrium_temporary_entity","atrium_arcane_ward","atrium_particle","atrium_portal_aura"]}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]}] anchored eyes positioned ^1 ^2 ^3 if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_block","atrium_temporary_entity","atrium_arcane_ward","atrium_particle","atrium_portal_aura"]}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]}] anchored eyes positioned ^1 ^-2 ^3 if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_block","atrium_temporary_entity","atrium_arcane_ward","atrium_particle","atrium_portal_aura"]}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]}] anchored eyes positioned ^-1 ^2 ^3 if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_block","atrium_temporary_entity","atrium_arcane_ward","atrium_particle","atrium_portal_aura"]}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]}] anchored eyes positioned ^-1 ^-2 ^3 if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_block","atrium_temporary_entity","atrium_arcane_ward","atrium_particle","atrium_portal_aura"]}
# sides
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]}] anchored eyes positioned ^2 ^ ^3 if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_block","atrium_temporary_entity","atrium_arcane_ward","atrium_particle","atrium_portal_aura"]}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]}] anchored eyes positioned ^-2 ^ ^3 if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_block","atrium_temporary_entity","atrium_arcane_ward","atrium_particle","atrium_portal_aura"]}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]}] anchored eyes positioned ^2 ^1 ^3 if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_block","atrium_temporary_entity","atrium_arcane_ward","atrium_particle","atrium_portal_aura"]}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]}] anchored eyes positioned ^-2 ^1 ^3 if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_block","atrium_temporary_entity","atrium_arcane_ward","atrium_particle","atrium_portal_aura"]}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]}] anchored eyes positioned ^2 ^-1 ^3 if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_block","atrium_temporary_entity","atrium_arcane_ward","atrium_particle","atrium_portal_aura"]}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]}] anchored eyes positioned ^-2 ^-1 ^3 if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_block","atrium_temporary_entity","atrium_arcane_ward","atrium_particle","atrium_portal_aura"]}
# corners
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]}] anchored eyes positioned ^2 ^2 ^3 if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_block","atrium_temporary_entity","atrium_arcane_ward","atrium_particle","atrium_portal_aura"]}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]}] anchored eyes positioned ^-2 ^2 ^3 if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_block","atrium_temporary_entity","atrium_arcane_ward","atrium_particle","atrium_portal_aura"]}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]}] anchored eyes positioned ^2 ^-2 ^3 if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_block","atrium_temporary_entity","atrium_arcane_ward","atrium_particle","atrium_portal_aura"]}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]}] anchored eyes positioned ^-2 ^-2 ^3 if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_block","atrium_temporary_entity","atrium_arcane_ward","atrium_particle","atrium_portal_aura"]}
#
# Place ward blocks
execute at @e[tag=atrium_arcane_ward,distance=..10] run setblock ~ ~ ~ minecraft:barrier
#
# The ward blocks have their charge score decreased every tick by atrium:entities/temporary_entity_manager.
# That script also automatically removes blocks placed by this spell after 10 seconds.
#
execute unless entity @e[tag=atrium_arcane_ward,distance=..10] run particle minecraft:smoke ~ ~1.25 ~ 0.25 0.25 0.25 0 15 normal
execute unless entity @e[tag=atrium_arcane_ward,distance=..10] run playsound minecraft:block.redstone_torch.burnout player @a[distance=..10] ~ ~ ~ 0.25 1 0.1
# Set timer. Level I spell = 10 seconds, Level II spell = 20 seconds
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]}] as @e[tag=atrium_arcane_ward,distance=..10] run scoreboard players set @s charge -200
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]}] as @e[tag=atrium_arcane_ward,distance=..10] run scoreboard players set @s charge -400
#
# If it worked, play sfx
execute if entity @e[tag=atrium_arcane_ward,distance=..10] run playsound minecraft:entity.illusioner.cast_spell player @a[distance=..20] ~ ~ ~ 0.75 0.75 0.1
execute if entity @e[tag=atrium_arcane_ward,distance=..10] run particle minecraft:sweep_attack ^ ^1 ^2 0 0 0 0 1
execute if entity @e[tag=atrium_arcane_ward,distance=..10] run particle minecraft:scrape ^ ^1 ^2 0.25 0.1 0.25 0 25
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete