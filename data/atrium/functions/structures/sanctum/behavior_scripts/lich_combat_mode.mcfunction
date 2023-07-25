# Combat mode
# - - - - -
# Triggered by lich_manager once each tick.
#
# Boss Bar Controller
#
# Sync Lich's current HP with displayed boss bar value
execute store result bossbar atrium:lich value run data get entity @e[tag=atrium_lich,limit=1] Health 1
# All players within 40 blocks of the Lich can see the boss bar
# Note: Boss Bars are hidden again by atrium:triggers/player_check_each_second
bossbar set atrium:lich players @a[distance=..40]
#
# The Lich will usually start flying when combat begins.
execute if predicate atrium:percentage_chances/0.05_p unless data entity @s NoGravity run function atrium:entities/mob_spells/lich_hover
#
# Spell Controller
#
# In combat, the Lich continually charges up for spells. It isn't messing around anymore.
execute unless score @s charge matches 61.. run function atrium:structures/sanctum/behavior_scripts/lich_spell_charge
#
# Spells are cast in priority order; If the first spell isn't cast, move on to the next one. If a spell is cast, all subsequent checks are skipped.
#
# Priority 1: Summon Minions
# 25% chance
# Prerequisite: No Minions are already present in the area
execute if score @s charge matches 60.. if predicate atrium:percentage_chances/0.25_p unless entity @e[tag=atrium_sanctum_minion,distance=..25] run function atrium:entities/mob_spells/lich_summon
#
# Priority 2: Soul Pyre
# 35% chance
# Prerequisite: None (Will cast on itself if no other targets are available)
execute if score @s charge matches 60.. if predicate atrium:percentage_chances/0.35_p run function atrium:entities/mob_spells/soul_pyre
#
# Priority 3: Thunderbolt
# 25% chance
# Prerequisite: A player is within 25 blocks and at least 3 blocks away from the Lich
execute if score @s charge matches 60.. if predicate atrium:percentage_chances/0.25_p if entity @p[predicate=atrium:player/targetable_and_visible,distance=3..25] at @p[predicate=atrium:player/targetable_and_visible,distance=3..25] run function atrium:entities/mob_spells/thunderbolt_setup
#
# Priority 4: Teleport to Lair
# 30% chance
# Prerequisite: The Lich is not currently in its Lair
execute if score @s charge matches 60.. unless entity @e[tag=atrium_sanctum_lair_tp,distance=..15] run function atrium:structures/sanctum/behavior_scripts/lich_roam_lair
#
# Priority 5: Fizzle Spell
# 50% chance
# Prerequisite: A nearby player is holding a staff
execute if score @s charge matches 60.. if entity @p[scores={charge=10..},predicate=atrium:player/targetable_and_visible,distance=..25,nbt={Inventory:[{Slot:-106b,tag:{atrium_staff:1b}}]}] run function atrium:entities/mob_spells/fizzle_spell
#
# Priority 6: Teleport to Lair II
# 100% chance
# Prerequisite: The Lich has been hit 5 times in quick succession (threat)
execute if score @s charge matches 60.. if score @s atrium_threat matches 5.. run function atrium:structures/sanctum/behavior_scripts/lich_roam_lair
#
# Movement Controller
#
# Once Lich reaches 60.., it has a chance to regain gravity.
execute if score @s charge matches 60.. if predicate atrium:percentage_chances/0.25_p run data remove entity @s NoGravity
#
# Lich teleports more when threatened; Threat level has a 1% chance to decrease by 1 each tick.
execute if predicate atrium:percentage_chances/0.01_p run scoreboard players remove @s atrium_threat 1
# If the Lich keeps taking shots at you without ever being hit, it returns to work.
execute if predicate atrium:percentage_chances/0.01_p if score @s atrium_threat matches ..-15 run function atrium:structures/sanctum/behavior_scripts/lich_ignore
# Lich occasionally flies around.
# 1% up or down
execute if predicate atrium:percentage_chances/0.005_p if data entity @s NoGravity run data merge entity @s {Motion:[0.0,0.1,0.0]}
execute if predicate atrium:percentage_chances/0.005_p if data entity @s NoGravity run data merge entity @s {Motion:[0.0,-0.075,0.0]}