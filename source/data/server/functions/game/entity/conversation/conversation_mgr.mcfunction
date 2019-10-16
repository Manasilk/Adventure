execute if entity @s[tag=!ENTITY_FLAG_QUESTGIVER,tag=ENTITY_FLAG_GOSSIP] run function server:game/entity/conversation/get_chat_menu
execute if entity @s[tag=ENTITY_FLAG_QUESTGIVER] run function server:game/entity/conversation/get_quest_menu

tag @s remove _e.send_convo_menu
scoreboard players reset @a[scores={_h.interact=1..},distance=0..5.299] _h.interact
tag @a[tag=_h.gossip_break,distance=0..5.299] remove _h.gossip_break