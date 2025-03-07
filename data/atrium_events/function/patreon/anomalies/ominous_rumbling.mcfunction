# Runs itself until cancelled
#
# Players in The Depths get Haste (+10% Attack Speed, +20% Mining Speed). The next poll has 1 additional option.
#
execute as @a[predicate=atrium:in_the_depths] run effect give @s minecraft:haste 3 0 true
#
schedule function atrium_events:patreon/anomalies/ominous_rumbling 1s