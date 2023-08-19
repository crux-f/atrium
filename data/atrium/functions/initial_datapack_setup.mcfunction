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
#
#
#
# Magic - - -
# resurrect is used to resurrect players from the dead
scoreboard objectives add resurrect dummy {"text":"Resurrect Progress","color":"aqua"}
# resurrect_others is used to track how many players you have revived in total
scoreboard objectives add resurrect_others dummy {"text":"Player Resurrections Performed","color":"aqua"}
# entropy is used for the occult magic system (initially tied to death count, can be altered)
scoreboard objectives add entropy dummy {"text":"Entropy","color":"dark_gray"}
# charge is used for any items that can charge up to use a special ability
scoreboard objectives add charge dummy {"text":"Charge Level","color":"green"}
# atrium_dance_spell is used for Dance, the air ultimate
scoreboard objectives add atrium_dance_spell dummy {"text":"Dance Bounces","color":"yellow"}
# atrium_parallax_x, atrium_parallax_y, atrium_parallax_z, atrium_parallax_dim and atrium_parallax_timer are used for the Parallax spell
scoreboard objectives add atrium_parallax_x dummy {"text":"Parallax [X]","color":"gray"}
scoreboard objectives add atrium_parallax_y dummy {"text":"Parallax [Y]","color":"gray"}
scoreboard objectives add atrium_parallax_z dummy {"text":"Parallax [Z]","color":"gray"}
scoreboard objectives add atrium_parallax_dim dummy {"text":"Parallax [Dimension]","color":"gray"}
scoreboard objectives add atrium_parallax_timer dummy {"text":"Parallax Spell Timer","color":"gray"}
# atrium_pocket_item_flag is used for the Pocket Item spell
scoreboard objectives add atrium_pocket_item_flag dummy {"text":"Pocket Item Spell Success Flag","color":"gray"}
# atrium_x_coordinate, atrium_y_coordinate, atrium_z_coordinate are used for Gust spell and Warp Gates
scoreboard objectives add atrium_x_coordinate dummy {"text":"[X]","color":"gray"}
scoreboard objectives add atrium_y_coordinate dummy {"text":"[Y]","color":"gray"}
scoreboard objectives add atrium_z_coordinate dummy {"text":"[Z]","color":"gray"}
# enchantment_damage is used for calculating damage on runic enchantments (NOTE: Once /damage is added this will become deprecated)
scoreboard objectives add enchantment_damage dummy {"text":"Enchantment Damage","color":"aqua"}
# atrium_xp_debt is used for the Warp Gate (how much xp is left to be paid)
scoreboard objectives add atrium_xp_debt dummy {"text":"XP Debt","color":"green"}
# atrium_xp_multiplier is used for the Warp Gate (which multiplier to use)
scoreboard objectives add atrium_xp_multiplier dummy {"text":"XP Multiplier","color":"green"}
# xp_calc_storage and xp_calc_bonus are used for the XP calculator found in atrium:misc/xp_calculators/get_total_xp
scoreboard objectives add xp_calc_bonus dummy {"text":"XP Calculation Bonus","color":"yellow"}
scoreboard objectives add xp_calc_storage dummy {"text":"XP Calculation Storage","color":"yellow"}
scoreboard objectives add warp_gate dummy {"text":"Warp Gate","color":"blue"}
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
# (Old Gods)
scoreboard objectives add maw_favor dummy {"text":"Maw Favor","color":"dark_red"}
scoreboard objectives add nameless_favor dummy {"text":"Nameless Favor","color":"dark_blue"}
scoreboard objectives add xenos_favor dummy {"text":"Xenos Favor","color":"white"}
# Misc - - - 
# same_tick_math is used for any math that will be finished in a single tick (therefor ensuring it never conflicts with anything else, unless you mess it up)
scoreboard objectives add same_tick_math dummy
# usher_intro is used to track the progress in the conversation with The Usher during the iteration 4 spawn sequence.
# scoreboard objectives add usher_intro dummy
# atrium_searching is used by mobs with custom behavior scripts (For now only the Lich uses this)
scoreboard objectives add atrium_searching dummy {"text":"Searching...","color":"white"}
# atrium_threat is used by mobs with custom behavior scripts
scoreboard objectives add atrium_threat dummy {"text":"Threat","color":"white"}
# Burrow Consequences
scoreboard objectives add depths_burrows dummy
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
team add atrium_glow_dark_aqua {"text":"Glow Dark Aqua","color":"dark_aqua"}
team modify atrium_glow_dark_aqua color dark_aqua
team add atrium_glow_dark_blue {"text":"Glow Dark Blue","color":"dark_blue"}
team modify atrium_glow_dark_blue color dark_blue
team add atrium_glow_dark_gray {"text":"Glow Dark Gray","color":"dark_gray"}
team modify atrium_glow_dark_gray color gray
team add atrium_glow_dark_green {"text":"Glow Dark Green","color":"dark_green"}
team modify atrium_glow_dark_green color dark_green
team add atrium_glow_dark_purple {"text":"Glow Dark Purple","color":"dark_purple"}
team modify atrium_glow_dark_purple color dark_purple
team add atrium_glow_gold {"text":"Glow Gold","color":"gold"}
team modify atrium_glow_gold color gold
team add atrium_glow_gray {"text":"Glow Gray","color":"gray"}
team modify atrium_glow_gray color gray
team add atrium_glow_green {"text":"Glow Green","color":"green"}
team modify atrium_glow_green color green
team add atrium_glow_light_purple {"text":"Glow Light Purple","color":"light_purple"}
team modify atrium_glow_light_purple color light_purple
team add atrium_glow_red {"text":"Glow Red","color":"red"}
team modify atrium_glow_red color red
team add atrium_glow_white {"text":"Glow White","color":"white"}
team modify atrium_glow_white color white
team add atrium_glow_yellow {"text":"Glow Yellow","color":"yellow"}
team modify atrium_glow_yellow color yellow
#
# BOSS BARS
#
bossbar add atrium:lich {"text":"Lich","color":"dark_purple"}
bossbar set atrium:lich max 450
bossbar set atrium:lich color blue
#
# EVENTS
#
scoreboard objectives add event_misc dummy {"text":"Event Misc","color":"light_purple"}
scoreboard objectives add builder_last_mode dummy {"text":"Last Gamemode","color":"white"}