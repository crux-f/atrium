# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/talk_to_villager
#
# Triggers every time you right-click on a villager or wandering trader.
#
# If you have never been introduced to this person, run the introduction script on them.
execute at @s positioned ^ ^ ^1 as @e[limit=1,sort=nearest,type=#atrium:talkable,tag=!atrium_introduced,distance=..6] run function atrium:triggers/entity_abilities/villager_introduction