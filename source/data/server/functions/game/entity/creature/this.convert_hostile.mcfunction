tag @s remove ENTITY_ACTION_NEUTRAL
tag @s remove reactor_ai

tag @s add ENTITY_ACTION_HOSTILE
tag @s add aggressor_ai
team join Hostile @s[team=Neutral]
scoreboard players set @s entity_hostility 3