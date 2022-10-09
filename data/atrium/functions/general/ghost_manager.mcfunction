# Runs each tick at every player in spectator mode
#
# Soul Particles at every ghost player
execute anchored eyes run particle minecraft:soul ~ ~ ~ 0 0 0 0 1 force
#
# Resurrection - Respawn Anchor
# Allows the player to bring themself back to life by using a single charge on the anchor.
# Player also expends 5 levels of their XP when resurrcting this way
execute if block ~ ~ ~ minecraft:respawn_anchor unless block ~ ~ ~ minecraft:respawn_anchor[charges=0] run function atrium:triggers/general/haunt_respawn_anchor