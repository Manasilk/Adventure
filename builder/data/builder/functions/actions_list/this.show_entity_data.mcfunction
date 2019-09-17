scoreboard players operation @s SpawnPosX /= #const 100
scoreboard players operation @s SpawnPosY /= #const 100
scoreboard players operation @s SpawnPosZ /= #const 100
scoreboard players operation @s SpawnRotX /= #const 10
scoreboard players operation @s SpawnRotY /= #const 10
tellraw @a[tag=QUERY.SHOW_ENTITY_INFO] [{"translate":"Entity.Name","with":[{"selector":"@s","color":"white"}],"color":"yellow"},{"translate":"Entity.GUID","with":[{"score":{"name":"@s","objective":"EntityGuid"},"color":"white"}]},{"translate":"Entity.ID","with":[{"score":{"name":"@s","objective":"EntityId"},"color":"white"}]},{"translate":"Entity.Type","with":[{"score":{"name":"@s","objective":"EntityType"},"color":"white"}]},{"translate":"Entity.Class","with":[{"score":{"name":"@s","objective":"EntityClass"},"color":"white"}]},{"translate":"Entity.Rank","with":[{"score":{"name":"@s","objective":"EntityRank"},"color":"white"}]},{"translate":"Entity.Hostility","with":[{"score":{"name":"@s","objective":"ActionType"},"color":"white"}]},{"translate":"Entity.Level","with":[{"score":{"name":"@s","objective":"EntityLevel"},"color":"green"}]},{"translate":"Entity.Health","with":[{"score":{"name":"@s","objective":"EntityCurHP"},"color":"green"},{"score":{"name":"@s","objective":"EntityMaxHP"},"color":"green"}]},{"translate":"Entity.Damage","with":[{"score":{"name":"@s","objective":"EntityCurAP"},"color":"green"}]},{"translate":"Entity.Armor","with":[{"score":{"name":"@s","objective":"EntityCurAR"},"color":"green"}]},{"translate":"Entity.Combat","with":[{"score":{"name":"@s","objective":"EntityCombat"},"color":"white"}]},{"translate":"Entity.CombatTimer","with":[{"score":{"name":"@s","objective":"CombatTimer"},"color":"white"}]},{"translate":"Entity.PlayerCountIC","with":[{"score":{"name":"@s","objective":"PlayerCountIC"},"color":"white"}]},{"translate":"Entity.ScalingValue","with":[{"score":{"name":"@s","objective":"ScalingValue"},"color":"white"}]},{"translate":"Entity.Multiplier","with":[{"score":{"name":"@s","objective":"Multiplier"},"color":"white"}]},{"translate":"Entity.PhaseId","with":[{"score":{"name":"@s","objective":"PhaseId"},"color":"white"}]},{"translate":"Entity.SpawnMask","with":[{"score":{"name":"@s","objective":"SpawnMask"},"color":"white"}]},{"translate":"Entity.SummonItr","with":[{"score":{"name":"@s","objective":"SummonItr"},"color":"white"}]},{"translate":"Entity.SummonTimer","with":[{"score":{"name":"@s","objective":"SummonTimer"},"color":"white"}]},{"translate":"Entity.SpellItr","with":[{"score":{"name":"@s","objective":"SpellItr"},"color":"white"}]},{"translate":"Entity.SpellTimer","with":[{"score":{"name":"@s","objective":"SpellTimer"},"color":"white"}]},{"translate":"Entity.SpawnPosition","with":[{"score":{"name":"@s","objective":"SpawnPosX"},"color":"white"},{"score":{"name":"@s","objective":"SpawnPosY"},"color":"white"},{"score":{"name":"@s","objective":"SpawnPosZ"},"color":"white"}]},{"translate":"Entity.SpawnRotation","with":[{"score":{"name":"@s","objective":"SpawnRotX"},"color":"white"},{"score":{"name":"@s","objective":"SpawnRotY"},"color":"white"}]},{"translate":"Entity.LootId","with":[{"score":{"name":"@s","objective":"LootId"},"color":"white"}]}]

#[
#{"translate":"Entity.Name","with":[{"selector":"@s","color":"white"}],"color":"yellow"},
#{"translate":"Entity.GUID","with":[{"score":{"name":"@s","objective":"EntityGuid"},"color":"white"}]},
#{"translate":"Entity.ID","with":[{"score":{"name":"@s","objective":"EntityId"},"color":"white"}]},
#{"translate":"Entity.Type","with":[{"score":{"name":"@s","objective":"EntityType"},"color":"white"}]},
#{"translate":"Entity.Class","with":[{"score":{"name":"@s","objective":"EntityClass"},"color":"white"}]},
#{"translate":"Entity.Rank","with":[{"score":{"name":"@s","objective":"EntityRank"},"color":"white"}]},
#{"translate":"Entity.Hostility","with":[{"score":{"name":"@s","objective":"ActionType"},"color":"white"}]},
#{"translate":"Entity.Level","with":[{"score":{"name":"@s","objective":"EntityLevel"},"color":"green"}]},
#{"translate":"Entity.Health","with":[{"score":{"name":"@s","objective":"EntityCurHP"},"color":"green"},{"score":{"name":"@s","objective":"EntityMaxHP"},"color":"green"}]},
#{"translate":"Entity.Armor","with":[{"score":{"name":"@s","objective":"EntityCurAR"},"color":"green"}]},
#{"translate":"Entity.Damage","with":[{"score":{"name":"@s","objective":"EntityCurAP"},"color":"green"}]},
#{"translate":"Entity.Combat","with":[{"score":{"name":"@s","objective":"EntityCombat"},"color":"white"}]},
#{"translate":"Entity.CombatTimer","with":[{"score":{"name":"@s","objective":"CombatTimer"},"color":"white"}]},
#{"translate":"Entity.PlayerCountIC","with":[{"score":{"name":"@s","objective":"PlayerCountIC"},"color":"white"}]},
#{"translate":"Entity.ScalingValue","with":[{"score":{"name":"@s","objective":"ScalingValue"},"color":"white"}]},
#{"translate":"Entity.Multiplier","with":[{"score":{"name":"@s","objective":"Multiplier"},"color":"white"}]},
#{"translate":"Entity.PhaseId","with":[{"score":{"name":"@s","objective":"PhaseId"},"color":"white"}]},
#{"translate":"Entity.SpawnMask","with":[{"score":{"name":"@s","objective":"SpawnMask"},"color":"white"}]},
#{"translate":"Entity.SummonItr","with":[{"score":{"name":"@s","objective":"SummonItr"},"color":"white"}]},
#{"translate":"Entity.SummonTimer","with":[{"score":{"name":"@s","objective":"SummonTimer"},"color":"white"}]},
#{"translate":"Entity.SpellItr","with":[{"score":{"name":"@s","objective":"SpellItr"},"color":"white"}]},
#{"translate":"Entity.SpellTimer","with":[{"score":{"name":"@s","objective":"SpellTimer"},"color":"white"}]},
#{"translate":"Entity.SpawnPosition","with":[{"score":{"name":"@s","objective":"SpawnPosX"},"color":"white"},{"score":{"name":"@s","objective":"SpawnPosY"},"color":"white"},{"score":{"name":"@s","objective":"SpawnPosZ"},"color":"white"}]},
#{"translate":"Entity.SpawnRotation","with":[{"score":{"name":"@s","objective":"SpawnRotX"},"color":"white"},{"score":{"name":"@s","objective":"SpawnRotY"},"color":"white"}]},
#{"translate":"Entity.LootId","with":[{"score":{"name":"@s","objective":"LootId"},"color":"white"}]}
#]

scoreboard players operation @s SpawnPosX *= #const 100
scoreboard players operation @s SpawnPosY *= #const 100
scoreboard players operation @s SpawnPosZ *= #const 100
scoreboard players operation @s SpawnRotX *= #const 10
scoreboard players operation @s SpawnRotY *= #const 10

tag @s remove QUERY.SHOW_ENTITY_INFO
tag @s remove QUERY.CKIT_UPDATE_ENTITY
tag @a[tag=QUERY.SHOW_ENTITY_INFO,tag=VMAPS_CUSTOM_COMMAND_INVOKER] remove VMAPS_CUSTOM_COMMAND_INVOKER
tag @a[tag=QUERY.SHOW_ENTITY_INFO,tag=QUERY.CKIT_UPDATE_ENTITY] remove QUERY.CKIT_UPDATE_ENTITY
tag @a[tag=QUERY.SHOW_ENTITY_INFO] remove QUERY.SHOW_ENTITY_INFO