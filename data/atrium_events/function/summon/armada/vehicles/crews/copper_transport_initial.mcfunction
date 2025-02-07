# Summons a group of foes based on the relative position of the pilot.
# All raiders are automatically added to the crew with a tag every time the ship moves, so they will move with it.
#
# 2-4 Armada Sky-Sailors above-deck
execute positioned ^2 ^ ^-9 run function atrium_events:summon/armada/single/sky_sailor
execute positioned ^-2 ^ ^-9 run function atrium_events:summon/armada/single/sky_sailor
#
execute positioned ^2 ^ ^-15 if predicate atrium:percentage_chances/0.40_p run function atrium_events:summon/armada/single/sky_sailor
execute positioned ^-2 ^ ^-15 if predicate atrium:percentage_chances/0.40_p run function atrium_events:summon/armada/single/sky_sailor
#
# 2-4 Armada Sky-Sailors below-deck
execute positioned ^2 ^-3.5 ^-9 run function atrium_events:summon/armada/single/sky_sailor
execute positioned ^-2 ^-3.5 ^-9 run function atrium_events:summon/armada/single/sky_sailor
execute positioned ^2 ^-3.5 ^-14 if predicate atrium:percentage_chances/0.35_p run function atrium_events:summon/armada/single/sky_sailor
execute positioned ^-2 ^-3.5 ^-14 if predicate atrium:percentage_chances/0.35_p run function atrium_events:summon/armada/single/sky_sailor
#
# 0-2 Armada Crusaders below-deck
execute positioned ^2 ^-3.5 ^-15 if predicate atrium:percentage_chances/0.50_p run function atrium_events:summon/armada/single/crusader
execute positioned ^-2 ^-3.5 ^-15 if predicate atrium:percentage_chances/0.35_p run function atrium_events:summon/armada/single/crusader