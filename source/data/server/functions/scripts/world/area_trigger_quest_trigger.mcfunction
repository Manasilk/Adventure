execute if entity @s[tag=AREA_TRIGGER_LINKED_TO] run function server:game/quests/get_status
execute if score @s[tag=AREA_TRIGGER_QUEST_LINK] task_pobj_count = @s task_objectives run scoreboard players set @s quest_status 1
execute if score @s[tag=AREA_TRIGGER_QUEST_LINK] quest_status = #dbc.enum QUEST_COMPLETE run function server:game/quests/get_reward_target
function server:game/entity/area_trigger/clear_linked_tags