scoreboard players add @s[scores={fatigue_level=0..59}] fatigue_level 1

execute if score @s fatigue_level matches 60 run function internal:world/entity/player/death_from_fatigue
execute unless predicate internal:world/biome/deep_ocean run scoreboard players remove @s[tag=ENTITY_FLAG_SWIMMING_FATIGUE,scores={fatigue_level=1..59}] fatigue_level 6

scoreboard players set @s[scores={fatigue_level=..-1}] fatigue_level 0
tag @s[tag=ENTITY_FLAG_SWIMMING_FATIGUE,scores={fatigue_level=0}] remove ENTITY_FLAG_SWIMMING_FATIGUE

execute if score @s fatigue_level matches 1..59 run function internal:world/entity/player/show_fatigue_bar