# This must be run for many of the features to work.
# It only needs to be run one time, though.
#
# SCOREBOARD OBJECTIVES  [REQUIRED FOR DATAPACK TO FUNCTION]
# - - - - - - - - - - - -
# General - - - 
# static_values is used for storing static numbers needed for scoreboard calculations.
scoreboard objectives add static_values dummy
# valid_ingredients is used by formula crafting systems to validate ingredients during crafting
scoreboard objectives add valid_ingredients dummy
# Magic - - -
# entropy is used for the occult magic system (initially tied to death count, can be altered)
scoreboard objectives add entropy dummy {"text":"Entropy","color":"dark_gray"}
#
# charge is used for any items that can charge up to use a special ability
scoreboard objectives add charge dummy {"text":"Charge Level","color":"green"}
#
# Misc - - - 
# same_tick_math is used for any math that will be finished in a single tick (therefor ensuring it never conflicts with anything else, unless you mess it up)
scoreboard objectives add same_tick_math dummy
#
# TEAMS
#
# Mob Only - - -
team add atrium_glow_aqua {"text":"Glow Aqua","color":"aqua"}
team modify atrium_glow_aqua color aqua
team add atrium_glow_black {"text":"Glow Black","color":"black"}
team modify atrium_glow_black color black
team add atrium_glow_blue {"text":"Glow Blue","color":"blue"}
team modify atrium_glow_blue color blue