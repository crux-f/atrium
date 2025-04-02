# Run when a Armada Engineer reaches an objective point tagged with atrium_armada_sky_cannon_site by said Engineer
#
# The Engineer stops hiding
tag @s remove atrium_currently_hiding
scoreboard players reset @s atrium_hiding
effect clear @s invisibility
data merge entity @s {Silent:false,HandItems:[{id:"minecraft:iron_pickaxe",count:1,components:{"minecraft:custom_model_data":{strings:["atrium_hammer"]}}},{}]}
#
# Remove the obj
kill @n[type=marker,tag=atrium_sky_cannon_site,distance=..15]
# Set this Engineer to be the project leader
tag @s add atrium_project_leader
# Specify which project they're working on (since scheduled scripts can't keep track of specific entities be default)
tag @s add atrium_building_sky_cannon
# Disable the Engineer's AI
# Note: re-enabled after timer expires by atrium:entities/condition_manager
tag @s add atrium_condition
tag @s add atrium_ai_disabled
data modify entity @s NoAI set value true
# Set timer (in ticks) ^
scoreboard players set @s atrium_condition_timer -560
#
# Start the project repeat script. It will continue running until A: The project is complete or B: This entity is no longer loaded (or dead)
function atrium_events:structures/armada/siege/sky_cannon/project_repeat
