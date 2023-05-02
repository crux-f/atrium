# Triggers if a revealed agent has had 30 seconds go by without being targeted by a player, but is still in loaded chunks
#
# Summon hidden version
function atrium_events:summon/armada/single/summon_hidden_sleeper_agent
# Particles / SFX
function atrium_events:summon/armada/behavior_scripts/sfx/agent_hide
# Remove revealed version
tp @s ~ ~-500 ~
