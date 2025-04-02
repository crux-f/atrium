# Summon 1 Armada Crusader who functions as the leader of the looting party
function atrium_events:summon/armada/single/crusader
tag @n[type=vindicator,tag=atrium_armada_crusader] add atrium_looting_party_leader
tag @n[type=vindicator,tag=atrium_looting_party_leader] add atrium_currently_hiding
#
function atrium:summon/summon_poof