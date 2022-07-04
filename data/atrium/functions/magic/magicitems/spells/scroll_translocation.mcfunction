execute as @a[predicate=atrium:scroll_translocation_req] at @s run particle minecraft:flash ~ ~1.5 ~ 0 0 0 0.1 25
execute as @a[predicate=atrium:scroll_translocation_req] at @s run playsound minecraft:entity.enderman.teleport player @a[distance=..30] ~ ~1.5 ~ 1 1 0.1
tag @a[predicate=atrium:scroll_translocation_req] add translocation_caster
#
# NEW ZONE OF THE EARTH - - - - - - - - - - - - -
#
# Waystones in OVERWORLD
#
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{fellstar_highlands_n_ws:1b}}]}] at @s run function atrium:travel/waystones/iteration_3/fellstar_highlands_n
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{fellstar_highlands_e_ws:1b}}]}] at @s run function atrium:travel/waystones/iteration_3/fellstar_highlands_e
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{fellstar_highlands_w_ws:1b}}]}] at @s run function atrium:travel/waystones/iteration_3/fellstar_highlands_w
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{fellstar_highlands_s_ws:1b}}]}] at @s run function atrium:travel/waystones/iteration_3/fellstar_highlands_s
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{coolwater_gulf_n_ws:1b}}]}] at @s run function atrium:travel/waystones/iteration_3/coolwater_gulf_n
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{coolwater_gulf_e_ws:1b}}]}] at @s run function atrium:travel/waystones/iteration_3/coolwater_gulf_e
#
# SUNSET ARCHIPELAGO - - - - - - - - - - - - - - - - - - - - -
#
# Waystones in OVERWORLD
#
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{sunsetarchi_ws:1b}}]}] at @s run function atrium:travel/waystones/sunsetarchi_tp
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{tigabaanwilds_ws:1b}}]}] at @s run function atrium:travel/waystones/tigabaanwilds_tp
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{aberrantsheet_ws:1b}}]}] at @s run function atrium:travel/waystones/aberrantsheet_tp
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{abrasar_ws:1b}}]}] at @s run function atrium:travel/waystones/abrasar_tp
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{emberpeak_ws:1b}}]}] at @s run function atrium:travel/waystones/emberpeak_tp
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{ceruleansea_ws:1b}}]}] at @s run function atrium:travel/waystones/ceruleansea_tp
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{laughgarden_ws:1b}}]}] at @s run function atrium:travel/waystones/laughgarden_tp
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{kjoltbreen_ws:1b}}]}] at @s run function atrium:travel/waystones/kjoltbreen_tp
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{redwoodisle_ws:1b}}]}] at @s run function atrium:travel/waystones/redwoodisle_tp
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{paintedbarren_ws:1b}}]}] at @s run function atrium:travel/waystones/paintedbarren_tp
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{wanderprairie_ws:1b}}]}] at @s run function atrium:travel/waystones/wanderprairie_tp
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{reach_s_ws:1b}}]}] at @s run function atrium:travel/waystones/reach_s_tp
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{reach_n_ws:1b}}]}] at @s run function atrium:travel/waystones/reach_n_tp
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{lostcoast_ws:1b}}]}] at @s run function atrium:travel/waystones/lostcoast_tp
#
# Towers in OVERWORLD
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{sunsetarchi_tws:1b}}]}] at @s run function atrium:travel/waystones/sunsetarchi_tws_tp
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{shipwrecker_tws:1b}}]}] at @s run function atrium:travel/waystones/shipwrecker_tws_tp
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{abrasar_tws:1b}}]}] at @s run function atrium:travel/waystones/afalia_tws_tp
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{foolshope_tws:1b}}]}] at @s run function atrium:travel/waystones/foolshope_tws_tp
#
# Waystones in NETHER
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{agaricruins_ws:1b}}]}] at @s run function atrium:travel/waystones/agaricruins_tp
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{foulswellhold_ws:1b}}]}] at @s run function atrium:travel/waystones/foulswellhold_tp
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{infernalwastes_ws:1b}}]}] at @s run function atrium:travel/waystones/infernalwastes_tp
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{oasisofsouls_ws:1b}}]}] at @s run function atrium:travel/waystones/oasisofsouls_tp
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{sanguinewild_ws:1b}}]}] at @s run function atrium:travel/waystones/sanguinewild_tp
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{silentthicket_ws:1b}}]}] at @s run function atrium:travel/waystones/silentthicket_tp
#
# Towers in NETHER
#
# Waystones in MERIDIAN
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{dancingshards_ws:1b}}]}] at @s run function atrium:travel/waystones/dancingshards_tp
#
# Towers in MERIDIAN
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{conflux_tws:1b}}]}] at @s run function atrium:travel/waystones/conflux_tws_tp
#
# Waystones in DEPTHS
#
execute as @a[predicate=atrium:scroll_translocation_req,nbt={Inventory:[{Slot:-106b,tag:{underprovince_ws:1b}}]}] at @s run function atrium:travel/waystones/underprovince_tp
#
item replace entity @a[tag=translocation_caster] weapon.offhand with minecraft:air
scoreboard players set @a[tag=translocation_caster] scroll 0
tag @a[tag=translocation_caster] remove translocation_caster

