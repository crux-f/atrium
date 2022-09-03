# Triggers if a revealed agent has had 30 seconds go by without being targeted by a player, but is still in loaded chunks
#
# Summon hidden version
function atrium:summon/armada/single/summon_hidden_propagandist
# Particles / SFX
function atrium:summon/armada/behavior_scripts/sfx/agent_hide
# Remove revealed version
tp @s ~ ~-500 ~
