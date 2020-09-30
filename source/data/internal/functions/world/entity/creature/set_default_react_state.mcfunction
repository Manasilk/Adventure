tag @s[team=] add ENTITY_ACTION_IGNORE
tag @s[team=Hostile] add ENTITY_ACTION_HOSTILE
tag @s[team=Neutral] add ENTITY_ACTION_NEUTRAL
tag @s[team=Friendly] add ENTITY_ACTION_FRIENDLY

scoreboard players set @s[team=] entity_hostility 0
scoreboard players set @s[team=Neutral] entity_hostility 2
scoreboard players set @s[team=Friendly] entity_hostility 1
scoreboard players set @s[team=Hostile] entity_hostility 3

function internal:world/entity/scripted_behavior/set_behavior_type