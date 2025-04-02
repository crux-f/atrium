# Summons 3 Sky Sailors and 2 Sky Knights with a 50% chance for a Scorcher
# (All mounted)
execute positioned ~ ~3 ~ run function atrium_events:summon/armada/single/mounted_sky_sailor
execute positioned ~ ~3 ~ run function atrium_events:summon/armada/single/mounted_sky_sailor
execute positioned ~ ~3 ~ run function atrium_events:summon/armada/single/mounted_sky_sailor
execute positioned ~ ~3 ~ run function atrium_events:summon/armada/single/mounted_sky_knight
execute positioned ~ ~3 ~ run function atrium_events:summon/armada/single/mounted_sky_knight
execute positioned ~ ~3 ~ if predicate atrium:percentage_chances/0.25_p run function atrium_events:summon/armada/single/mounted_scorcher