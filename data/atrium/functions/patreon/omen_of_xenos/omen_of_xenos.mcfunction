# Checks once every second
schedule function atrium:patreon/omen_of_xenos/omen_of_xenos 1s
#
# Each player who is wearing no armor ticks their anomaly score up by 1.
# execute as @a if predicate atrium:patreon/omen_of_xenos_req run scoreboard players add @s atrium_omen_of_xenos_anomaly 1
# Each player who is on fire can burn away the growth.
execute as @a if predicate atrium:entity/is_on_fire at @s run function atrium:patreon/omen_of_xenos/burn_off_growth
# If their anomaly score reaches 
# Each player who has been "Growing" for at least 5 minutes will advance to stage 1 (unless they already did)
execute as @a if score @s atrium_omen_of_xenos_anomaly matches 300 unless data entity @s {Inventory:[{Slot:100b,tag:{atrium_xenos_growth:1}}]} run function atrium:patreon/omen_of_xenos/grow_stage_1
# Each player who has been "Growing" for at least 20 minutes will advance to stage 2 (unless they already did)
execute as @a if score @s atrium_omen_of_xenos_anomaly matches 1200 unless data entity @s {Inventory:[{Slot:101b,tag:{atrium_xenos_growth:1}}]} run function atrium:patreon/omen_of_xenos/grow_stage_2
# Each player who has been "Growing" for at least 60 minutes will advance to stage 3 (unless they already did)
execute as @a if score @s atrium_omen_of_xenos_anomaly matches 3600 unless data entity @s {Inventory:[{Slot:102b,tag:{atrium_xenos_growth:1}}]} run function atrium:patreon/omen_of_xenos/grow_stage_3
# Each player who has been "Growing" for at least 120 minutes will advance to stage 4 (unless they already did)
execute as @a if score @s atrium_omen_of_xenos_anomaly matches 7200 unless data entity @s {Inventory:[{Slot:103b,tag:{atrium_xenos_growth:1}}]} run function atrium:patreon/omen_of_xenos/grow_stage_4
# Each player who has been "Growing" for at least 180 minutes will advance to stage 5 (unless they already did)
execute as @a if score @s atrium_omen_of_xenos_anomaly matches 10800 if data entity @s {Inventory:[{Slot:103b,tag:{atrium_xenos_growth:1,atrium_growth_stage:1}}]} run function atrium:patreon/omen_of_xenos/grow_stage_5
# Each player who has been "Growing" for at least 240 minutes will advance to stage 6 (unless they already did)
execute as @a if score @s atrium_omen_of_xenos_anomaly matches 14400 if data entity @s {Inventory:[{Slot:103b,tag:{atrium_xenos_growth:1,atrium_growth_stage:2}}]} run function atrium:patreon/omen_of_xenos/grow_stage_6
# Each player who has been "Growing" for at least 300 minutes will advance to stage 7 (unless they already did)
execute as @a if score @s atrium_omen_of_xenos_anomaly matches 18000 if data entity @s {Inventory:[{Slot:103b,tag:{atrium_xenos_growth:1,atrium_growth_stage:3}}]} run function atrium:patreon/omen_of_xenos/grow_stage_7
#
# Each player who has reached at least stage 6 has occasional pollen particles.
# (If chest growth is at stage 4)
execute as @a if data entity @s {Inventory:[{Slot:102b,tag:{atrium_xenos_growth:1,atrium_growth_stage:4}}]} if predicate atrium:percentage_chances/0.10_p at @s run particle minecraft:spore_blossom_air ~ ~1.25 ~ 0.1 0.1 0.1 0.1 3