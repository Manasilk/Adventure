execute if entity @s[type=#internal:creature] run tellraw @a[tag=account.builder] [{"translate":"builder_info.entity_id","with":[{"score":{"name":"@s","objective":"entity_id"},"color":"white"}],"color":"yellow"},{"translate":"builder_info.entity_guid","with":[{"score":{"name":"@s","objective":"entity_guid"},"color":"white"}],"color":"yellow"},{"translate":"builder_info.entity_hostility","with":[{"score":{"name":"@s","objective":"entity_hostility"},"color":"white"}],"color":"yellow"},{"translate":"builder_info.entity_level","with":[{"score":{"name":"@s","objective":"entity_level"},"color":"white"}]},{"translate":"builder_info.entity_rank","with":[{"score":{"name":"@s","objective":"entity_rank"},"color":"white"}]},{"translate":"builder_info.entity_health","with":[{"score":{"name":"@s","objective":"entity_curhp"},"color":"green"},{"score":{"name":"@s","objective":"entity_maxhp"},"color":"green"}],"color":"yellow"},{"translate":"builder_info.entity_armor","with":[{"score":{"name":"@s","objective":"entity_armor"},"color":"green"}],"color":"yellow"},{"translate":"builder_info.entity_curap","with":[{"score":{"name":"@s","objective":"entity_curap"},"color":"green"}],"color":"yellow"},{"translate":"builder_info.entity_spawn","with":[{"score":{"name":"@s","objective":"entity.spawn_x"},"color":"white"},{"score":{"name":"@s","objective":"entity.spawn_y"},"color":"white"},{"score":{"name":"@s","objective":"entity.spawn_z"},"color":"white"}],"color":"yellow"},{"translate":"builder_info.entity_lootid","with":[{"score":{"name":"@s","objective":"entity_lootid"},"color":"white"}],"color":"yellow"}]
execute if entity @s[type=#internal:area_trigger,tag=ENTITY_FLAG_EXTRA_OBJECT_BIND] run tellraw @a[tag=account.builder] [{"translate":"builder_info.entity_guid","with":[{"score":{"name":"@s","objective":"entity_guid"},"color":"white"}],"color":"yellow"},{"translate":"builder_info.biome_id","with":[{"score":{"name":"@s","objective":"wb.biome_id"},"color":"white"}],"color":"yellow"},{"translate":"builder_info.object_id","with":[{"score":{"name":"@s","objective":"wb.gob_id"},"color":"white"}],"color":"yellow"},{"translate":"builder_info.object_type","with":[{"score":{"name":"@s","objective":"wb.gob_type"},"color":"white"}],"color":"yellow"},{"translate":"builder_info.object_pos","with":[{"score":{"name":"@s","objective":"wb.pos_x"},"color":"white"},{"score":{"name":"@s","objective":"wb.pos_y"},"color":"white"},{"score":{"name":"@s","objective":"wb.pos_z"},"color":"white"}],"color":"yellow"}]
tag @s remove world_builder.show_info

#npc
#[
#{"translate":"builder_info.entity_id","with":[{"score":{"name":"@s","objective":"entity_id"},"color":"white"}],"color":"yellow"},
#{"translate":"builder_info.entity_guid","with":[{"score":{"name":"@s","objective":"entity_guid"},"color":"white"}],"color":"yellow"},
#{"translate":"builder_info.entity_hostility","with":[{"score":{"name":"@s","objective":"entity_hostility"},"color":"white"}],"color":"yellow"},
#{"translate":"builder_info.entity_level","with":[{"score":{"name":"@s","objective":"entity_level"},"color":"white"}]},
#{"translate":"builder_info.entity_rank","with":[{"score":{"name":"@s","objective":"entity_rank"},"color":"white"}]},
#{"translate":"builder_info.entity_health","with":[{"score":{"name":"@s","objective":"entity_curhp"},"color":"green"},{"score":{"name":"@s","objective":"entity_maxhp"},"color":"green"}],"color":"yellow"},
#{"translate":"builder_info.entity_armor","with":[{"score":{"name":"@s","objective":"entity_armor"},"color":"green"}],"color":"yellow"},
#{"translate":"builder_info.entity_curap","with":[{"score":{"name":"@s","objective":"entity_curap"},"color":"green"}],"color":"yellow"},
#{"translate":"builder_info.entity_spawn","with":[{"score":{"name":"@s","objective":"entity.spawn_x"},"color":"white"},{"score":{"name":"@s","objective":"entity.spawn_y"},"color":"white"},{"score":{"name":"@s","objective":"entity.spawn_z"},"color":"white"}],"color":"yellow"},
#{"translate":"builder_info.entity_lootid","with":[{"score":{"name":"@s","objective":"entity_lootid"},"color":"white"}],"color":"yellow"}
#]

#object
#[
#{"translate":"builder_info.entity_guid","with":[{"score":{"name":"@s","objective":"entity_guid"},"color":"white"}],"color":"yellow"},
#{"translate":"builder_info.biome_id","with":[{"score":{"name":"@s","objective":"wb.biome_id"},"color":"white"}],"color":"yellow"},
#{"translate":"builder_info.object_id","with":[{"score":{"name":"@s","objective":"wb.gob_id"},"color":"white"}],"color":"yellow"},
#{"translate":"builder_info.object_type","with":[{"score":{"name":"@s","objective":"wb.gob_type"},"color":"white"}],"color":"yellow"},
#{"translate":"builder_info.object_pos","with":[{"score":{"name":"@s","objective":"wb.pos_x"},"color":"white"},{"score":{"name":"@s","objective":"wb.pos_y"},"color":"white"},{"score":{"name":"@s","objective":"wb.pos_z"},"color":"white"}],"color":"yellow"}
#]