function atrium:events/knightboss/blackknight_inv_on
execute at @e[tag=blackknight] run execute at @r[distance=..50,gamemode=survival] run tp @e[tag=blackknight] ~ ~30 ~
schedule function atrium:events/knightboss/blackknight_inv_off 3s
schedule function atrium:events/knightboss/blackknight_soulfire1 23s
