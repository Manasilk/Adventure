scoreboard players add @s[scores={fatigue_level=0..59}] fatigue_level 1

execute if score @s fatigue_level matches 60 run function server:game/entity/player/reset_player_fatigue
scoreboard players remove @s[tag=ENTITY_FLAG_SWIMMING_FATIGUE,scores={fatigue_level=0..59},advancements={server:internal/fatigue/biome_deep_ocean=false}] fatigue_level 6

scoreboard players set @s[scores={fatigue_level=..-1}] fatigue_level 0
tag @s[tag=ENTITY_FLAG_SWIMMING_FATIGUE,scores={fatigue_level=0}] remove ENTITY_FLAG_SWIMMING_FATIGUE
advancement revoke @s only server:internal/fatigue/biome_deep_ocean

execute if score @s fatigue_level matches 1..59 run function server:game/entity/player/show_fatigue_bar