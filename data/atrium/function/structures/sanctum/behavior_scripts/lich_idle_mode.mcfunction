# Idle mode
# - - - - -
# Triggered by lich_manager once each tick.
#
# 1% chance to drink a Potion of Harming (if needed).
execute if predicate atrium:percentage_chances/0.01_p unless data entity @s {Health:450f} run function atrium:structures/sanctum/behavior_scripts/drink_harming_potion
#
# 10% chance to charge up for an idle spell (Unless the Lich is already at 61 or higher)
execute if predicate atrium:percentage_chances/0.10_p unless score @s charge matches 61.. run function atrium:structures/sanctum/behavior_scripts/lich_spell_charge
# 1% chance to play their idle sound
execute if predicate atrium:percentage_chances/0.01_p run playsound minecraft:entity.stray.ambient hostile @a[distance=..15] ~ ~ ~ 1 0.25 0.1
# 1% chance to play a working sound (if an appropriate block is nearby)
execute if predicate atrium:percentage_chances/0.01_p run function atrium:structures/sanctum/fx/lich_at_work
#
# 10% chance to teleport to another point within the Lich's lair (if able)
execute if score @s charge matches 60.. if predicate atrium:percentage_chances/0.10_p run function atrium:structures/sanctum/behavior_scripts/lich_roam_lair
# 6% chance to teleport to a point outside the lair (if able)
execute if score @s charge matches 60.. if predicate atrium:percentage_chances/0.06_p run function atrium:structures/sanctum/behavior_scripts/lich_roam
#
# If the Lich is NOT in their lair AND there are no Sanctum minions within 25 blocks, the Lich has a 25% chance to summon a few.
execute if score @s charge matches 60.. if predicate atrium:percentage_chances/0.25_p unless entity @e[tag=atrium_sanctum_minion,distance=..25] unless entity @e[tag=atrium_sanctum_lair_tp,distance=..15] run function atrium:entities/mob_spells/lich_summon
#
# If the Lich is standing on air and the block under that is also air, there is a 50% chance they will disobey the laws of physics.
execute if block ~ ~-1 ~ minecraft:air if block ~ ~-2 ~ minecraft:air if predicate atrium:percentage_chances/0.50_p unless data entity @s NoGravity run function atrium:entities/mob_spells/lich_hover
# If the Lich is on fire, drink a Fire Resistance potion.
execute if predicate atrium:entity/is_on_fire unless predicate atrium:effects/if_fire_resistance_any run function atrium:structures/sanctum/behavior_scripts/drink_fire_res_potion
# If the Lich somehow ends up with a different item in its main hand, replace it with a staff.
execute unless data entity @s {HandItems:[{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":{strings:["atrium_master_space_staff"]}}},{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_model_data":{strings:["atrium_ps_arcane_ward"]}}}]} run data merge entity @s {equipment:{mainhand:{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":{strings:["atrium_master_space_staff"]}}},offhand:{id:"firework_star",count:1,components:{"minecraft:custom_model_data":{strings:["atrium_ps_arcane_ward"]}}}}}
# Nearby Risen Cloud-Dancers get their real bows back too.
execute if entity @e[tag=atrium_risen_cloud_dancer,distance=..200,tag=!atrium_bow_fixed] as @e[tag=atrium_risen_cloud_dancer,distance=..200,tag=!atrium_bow_fixed] run data merge entity @s {equipment:{mainhand:{components: {"minecraft:custom_data": {atrium_cloud_dancers_bow: 1b}, "minecraft:custom_name": '{"text":"Cloud-Dancer\'s Bow","italic":false}', "minecraft:enchantments": {levels: {"minecraft:punch": 3, "minecraft:unbreaking": 3}}, "minecraft:lore": ['{"text":"Crafted for a Cloud-Dancer"}', '{"text":"monk, once upon a time."}'], "minecraft:repair_cost": 5}, count: 1, id: "minecraft:bow"},offhand:{components: {"minecraft:custom_data": {atrium_arrow_of_mercy: 1b}, "minecraft:custom_name": '{"text":"Arrow of Mercy","italic":false}', "minecraft:potion_contents": {potion: "minecraft:long_slow_falling"}}, count: 16, id: "minecraft:tipped_arrow"}}}
execute if entity @e[tag=atrium_risen_cloud_dancer,distance=..200,tag=!atrium_bow_fixed] as @e[tag=atrium_risen_cloud_dancer,distance=..200,tag=!atrium_bow_fixed] run tag @s add atrium_bow_fixed