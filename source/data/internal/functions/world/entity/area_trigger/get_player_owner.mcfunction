scoreboard players operation #temp TEMP = @s owner_id
execute as @a[tag=!check_player_owner,sort=nearest,limit=1] run function internal:world/entity/player/check_owner
execute unless entity @a[tag=is_owner,limit=1] if entity @a[tag=!check_player_owner] run function internal:world/entity/area_trigger/get_player_owner

tag @a[tag=is_owner] add messages.error.invalid_biome
tag @a[tag=is_owner] remove is_owner
tag @a[tag=check_player_owner] remove check_player_owner
scoreboard players set #temp TEMP 0
kill @s