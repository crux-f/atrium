schedule clear atrium:events/knightboss/blackknight_soulfire1
schedule clear atrium:events/knightboss/blackknight_soulfire2
schedule clear atrium:events/knightboss/blackknight_mark1
schedule clear atrium:events/knightboss/blackknight_mark2
schedule clear atrium:events/knightboss/blackknight_jump
schedule clear atrium:events/knightboss/blackknight_land
data merge entity @e[type=wither_skeleton,limit=1,tag=blackknight] {Attributes:[{Name:generic.movement_speed,Base:0}]}
function atrium:events/knightboss/blackknight_inv_on
function atrium:music/loops/stop_apatheticdisplay
execute at @e[tag=blackknight] run summon lightning_bolt ~ ~ ~
schedule function atrium:events/knightboss/maycoes_appear 5s
