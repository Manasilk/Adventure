execute if entity @s[type=#server:creature] run tellraw @a[tag=rbac.builder] [{"translate":"builder_info.entity_id","with":[{"score":{"name":"@s","objective":"entity_id"},"color":"white"}],"color":"yellow"},{"translate":"builder_info.entity_guid","with":[{"score":{"name":"@s","objective":"entity_guid"},"color":"white"}],"color":"yellow"},{"translate":"builder_info.entity_hostility","with":[{"score":{"name":"@s","objective":"entity_hostility"},"color":"white"}],"color":"yellow"},{"translate":"builder_info.entity_level","with":[{"score":{"name":"@s","objective":"entity_level"},"color":"white"}]},{"translate":"builder_info.entity_rank","with":[{"score":{"name":"@s","objective":"entity_rank"},"color":"white"}]},{"translate":"builder_info.entity_health","with":[{"score":{"name":"@s","objective":"entity_curhp"},"color":"green"},{"score":{"name":"@s","objective":"entity_maxhp"},"color":"green"}],"color":"yellow"},{"translate":"builder_info.entity_armor","with":[{"score":{"name":"@s","objective":"entity_armor"},"color":"green"}],"color":"yellow"},{"translate":"builder_info.entity_curap","with":[{"score":{"name":"@s","objective":"entity_curap"},"color":"green"}],"color":"yellow"},{"translate":"builder_info.entity_spawn","with":[{"score":{"name":"@s","objective":"entity_spawn.x"},"color":"white"},{"score":{"name":"@s","objective":"entity_spawn.y"},"color":"white"},{"score":{"name":"@s","objective":"entity_spawn.z"},"color":"white"}],"color":"yellow"},{"translate":"builder_info.entity_lootid","with":[{"score":{"name":"@s","objective":"entity_lootid"},"color":"white"}],"color":"yellow"}]
execute if entity @s[type=#server:area_trigger,tag=ENTITY_FLAG_OBJECT_HOST] run tellraw @a[tag=rbac.builder] [{"translate":"builder_info.entity_guid","with":[{"score":{"name":"@s","objective":"entity_guid"},"color":"white"}],"color":"yellow"},{"translate":"builder_info.biome_id","with":[{"score":{"name":"@s","objective":"wb_biome_id"},"color":"white"}],"color":"yellow"},{"translate":"builder_info.object_id","with":[{"score":{"name":"@s","objective":"wb_gob_id"},"color":"white"}],"color":"yellow"},{"translate":"builder_info.object_type","with":[{"score":{"name":"@s","objective":"wb_gob_type"},"color":"white"}],"color":"yellow"},{"translate":"builder_info.object_pos","with":[{"score":{"name":"@s","objective":"wb_pos.x"},"color":"white"},{"score":{"name":"@s","objective":"wb_pos.y"},"color":"white"},{"score":{"name":"@s","objective":"wb_pos.z"},"color":"white"}],"color":"yellow"}]
tag @s remove _h.wb_show_info

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
#{"translate":"builder_info.entity_spawn","with":[{"score":{"name":"@s","objective":"entity_spawn.x"},"color":"white"},{"score":{"name":"@s","objective":"entity_spawn.y"},"color":"white"},{"score":{"name":"@s","objective":"entity_spawn.z"},"color":"white"}],"color":"yellow"},
#{"translate":"builder_info.entity_lootid","with":[{"score":{"name":"@s","objective":"entity_lootid"},"color":"white"}],"color":"yellow"}
#]

#object
#[
#{"translate":"builder_info.entity_guid","with":[{"score":{"name":"@s","objective":"entity_guid"},"color":"white"}],"color":"yellow"},
#{"translate":"builder_info.biome_id","with":[{"score":{"name":"@s","objective":"wb_biome_id"},"color":"white"}],"color":"yellow"},
#{"translate":"builder_info.object_id","with":[{"score":{"name":"@s","objective":"wb_gob_id"},"color":"white"}],"color":"yellow"},
#{"translate":"builder_info.object_type","with":[{"score":{"name":"@s","objective":"wb_gob_type"},"color":"white"}],"color":"yellow"},
#{"translate":"builder_info.object_pos","with":[{"score":{"name":"@s","objective":"wb_pos.x"},"color":"white"},{"score":{"name":"@s","objective":"wb_pos.y"},"color":"white"},{"score":{"name":"@s","objective":"wb_pos.z"},"color":"white"}],"color":"yellow"}
#]