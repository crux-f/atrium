# Run as the tagged user
# 
# teleport them into Apocryphus.
execute in atrium:apocryphus run tp @s ~ -224 ~ facing ~ ~3 ~
# Set the player to Adventure Mode.
gamemode adventure @s
#
# In 1 tick, run the generate script.
schedule function atrium:structures/apocryphus/generate_starter_area 1t