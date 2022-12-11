# Runs each tick at every player in spectator mode
#
# Soul Particles at every ghost player
execute anchored eyes run particle minecraft:soul ^ ^ ^ 0 0 0 0 1 force @a[distance=1..]
#
# Resurrection - Respawn Anchor
#
# Allows the player to bring themself back to life by using a single charge on the anchor.
# Player also expends 5 levels of their XP when resurrcting this way
execute if block ~ ~ ~ minecraft:respawn_anchor unless block ~ ~ ~ minecraft:respawn_anchor[charges=0] run function atrium:general/death/haunt_respawn_anchor
#
# Afflict all Ghost players with Darkness (limits the ability for people to Big Exploit the ability to find underground stuff)
# UNLESS they are near a living player
execute unless entity @a[distance=..10,gamemode=!spectator] run effect give @s minecraft:darkness 2 0 true