# Run each second if the player is on fire (while the anomaly script is running that is)
#
# The higher the stage, the less likely it burns away
# Stage 4-7 = 7% per second
execute if data entity @s {Inventory:[{Slot:103b,tag:{atrium_xenos_growth:1}}]} if predicate atrium:percentage_chances/0.07_p run function atrium_events:patreon/anomalies/omen_of_xenos/burn_head_item
execute if data entity @s {Inventory:[{Slot:103b,tag:{atrium_xenos_growth:1}}]} if predicate atrium:percentage_chances/0.07_p run function atrium_events:patreon/anomalies/omen_of_xenos/burn_head_item
# Stage 3 = 15%
execute if data entity @s {Inventory:[{Slot:102b,tag:{atrium_xenos_growth:1}}]} unless data entity @s {Inventory:[{Slot:103b,tag:{atrium_xenos_growth:1}}]} if predicate atrium:percentage_chances/0.15_p run function atrium_events:patreon/anomalies/omen_of_xenos/burn_chest_item
# Stage 2 = 25%
execute if data entity @s {Inventory:[{Slot:101b,tag:{atrium_xenos_growth:1}}]} unless data entity @s {Inventory:[{Slot:102b,tag:{atrium_xenos_growth:1}}]} if predicate atrium:percentage_chances/0.25_p run function atrium_events:patreon/anomalies/omen_of_xenos/burn_legs_item
# Stage 1 = 40%
execute if data entity @s {Inventory:[{Slot:100b,tag:{atrium_xenos_growth:1}}]} unless data entity @s {Inventory:[{Slot:101b,tag:{atrium_xenos_growth:1}}]} if predicate atrium:percentage_chances/0.40_p run function atrium_events:patreon/anomalies/omen_of_xenos/burn_feet_item
# Do Wither damage even if the player has fire res
damage @s 1 minecraft:wither
# Particles
particle minecraft:smoke ~ ~1.25 ~ 0.25 0.5 0.25 0 5