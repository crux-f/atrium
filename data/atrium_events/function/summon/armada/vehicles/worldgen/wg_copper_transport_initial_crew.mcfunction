# Run 2 seconds after the copper transport spawns during world generation
execute at @e[type=vindicator,tag=atrium_pilot_without_crew] run function atrium_events:summon/armada/vehicles/crews/copper_transport_initial
# pretty sure structures dont save teams so lets get him on the right team
team join atrium_armada @e[type=vindicator,tag=atrium_pilot_without_crew]
# remove tag as its no longer needed
tag @e[type=vindicator,tag=atrium_pilot_without_crew] remove atrium_pilot_without_crew