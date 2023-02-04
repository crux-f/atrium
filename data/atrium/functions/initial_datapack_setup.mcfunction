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
# resurrect is used to resurrect players from the dead
scoreboard objectives add resurrect dummy {"text":"Resurrect Progress","color":"aqua"}
# resurrect_others is used to track how many players you have revived in total
scoreboard objectives add resurrect_others dummy {"text":"Player Resurrections Performed","color":"aqua"}
# entropy is used for the occult magic system (initially tied to death count, can be altered)
scoreboard objectives add entropy dummy {"text":"Entropy","color":"dark_gray"}
#
# charge is used for any items that can charge up to use a special ability
scoreboard objectives add charge dummy {"text":"Charge Level","color":"green"}
# atrium_dance_spell is used for Dance, the air ultimate
scoreboard objectives add atrium_dance_spell dummy {"text":"Dance Bounces","color":"yellow"}
#
# Shrines - - -
# Each of the 13 gods has a Favor counter for shrine functionality.
scoreboard objectives add aurora_favor dummy {"text":"Aurora Favor","color":"gray"}
scoreboard objectives add chorus_favor dummy {"text":"Chorus Favor","color":"light_purple"}
scoreboard objectives add geota_favor dummy {"text":"Geota Favor","color":"dark_green"}
scoreboard objectives add ghael_favor dummy {"text":"Ghael Favor","color":"gold"}
scoreboard objectives add messorum_favor dummy {"text":"Messorum Favor","color":"dark_purple"}
scoreboard objectives add nox_favor dummy {"text":"Nox Favor","color":"red"}
scoreboard objectives add oswald_favor dummy {"text":"Oswald Favor","color":"white"}
scoreboard objectives add quipster_favor dummy {"text":"Quipster Favor","color":"green"}
scoreboard objectives add syrula_favor dummy {"text":"Syrula Favor","color":"blue"}
scoreboard objectives add taraqsol_favor dummy {"text":"Taraq-Sol Favor","color":"yellow"}
# Misc - - - 
# same_tick_math is used for any math that will be finished in a single tick (therefor ensuring it never conflicts with anything else, unless you mess it up)
scoreboard objectives add same_tick_math dummy
# usher_intro is used to track the progress in the conversation with The Usher during the iteration 4 spawn sequence.
scoreboard objectives add usher_intro dummy
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