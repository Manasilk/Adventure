playsound minecraft:event.raid.horn ambient @a[distance=0..41.999] ~ ~ ~ 500 1 0
scoreboard players operation @s entity_upd_t = #dbc.server cfg.normal_t
tag @s add _e.outpost_siege