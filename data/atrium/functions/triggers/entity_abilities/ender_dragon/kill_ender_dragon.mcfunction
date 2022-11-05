# Revoke advancement to allow re-trigger
advancement revoke @s only atrium:triggers/entity_abilities/ender_dragon/kill_ender_dragon
#
# Replace all Averting Eyes in loaded chunks with ender eyes (which instantly shatter).
execute at @e[tag=atrium_averting_eye] run summon minecraft:eye_of_ender ~ ~ ~
kill @e[tag=atrium_averting_eye]
#
# If a player has the dragon_event tag, trigger the Chorus cutscene.
execute if entity @a[tag=dragon_event] run function atrium:events/iteration3/quest_events/snowfall_6/chorus_speech_start