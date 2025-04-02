# Run as an Engineer who just finished building a sky cannon.
# Stop building, stop being a project leader.
tag @s remove atrium_building_sky_cannon
tag @s remove atrium_project_leader
# Reset score
scoreboard players reset @s event_misc
# (Note: AI will re-enable automatically using my custom condition timer).
# Add any guys spawned by the template to the armada team (since teams dont save in structure templates)
team join atrium_armada @e[type=#raiders,distance=..5]
#
# Place final template
execute positioned ~-3 ~ ~-3 run place template atrium_events:armada/siege/sky_cannon_complete
# Final SFX
playsound minecraft:block.vault.activate block @a[distance=..25] ~ ~ ~ 1.5 0 0.45
playsound minecraft:entity.villager.work_toolsmith block @a[distance=..15] ~ ~ ~ 0.5 0 0.1
#
# Summon the Cannon Controller. It hides inside the redstone lamp directly above the Engineer's control seat thing.
summon minecraft:marker ~ ~5 ~ {Tags:["atrium_armada_sky_cannon_controller"]}
# Enable Cannon repeat script. This will continue running until the bulb in the center of the control room ceiling is destroyed.
function atrium_events:structures/armada/siege/sky_cannon/operation_check