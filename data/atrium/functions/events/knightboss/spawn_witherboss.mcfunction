execute at @e[tag=blackknight] run summon wither ~ ~ ~ {CustomNameVisible:1b,PersistenceRequired:1b,Health:600f,Invul:240,CustomName:'{"text":"The Dishonored","color":"dark_purple"}',Attributes:[{Name:generic.max_health,Base:600}]}
execute at @e[tag=blackknight] run playsound minecraft:atrium.promotionfromhell record @a[tag=event] ~ ~ ~ 0.6 1 0.6
tp @e[tag=blackknight] ~ ~-500 ~
schedule function atrium:music/loops/adecayinghope 13s
