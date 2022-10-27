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
scoreboard objectives add entropy dummy
#
# charge is used for any items that can charge up to use a special ability
scoreboard objectives add charge dummy {"text":"Charge Level","color":"green"}