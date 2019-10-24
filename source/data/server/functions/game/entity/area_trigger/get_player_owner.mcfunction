scoreboard players operation #dbc.temp TEMP = @s owner_id
execute as @a[tag=!_h.check_player_owner,sort=nearest,limit=1] run function server:game/entity/player/check_owner
execute unless entity @a[tag=_h.is_owner,limit=1] if entity @a[tag=!_h.check_player_owner] run function server:game/entity/area_trigger/get_player_owner

tag @a[tag=_h.is_owner] add _e.error_biome_invalid
tag @a[tag=_h.is_owner] remove _h.is_owner
tag @a[tag=_h.check_player_owner] remove _h.check_player_owner
scoreboard players set #dbc.temp TEMP 0
kill @s