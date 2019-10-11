function server:game/entity/conversation/get_quest_reward
execute as @a[tag=_h.gossip_break,scores={_h.interact=1..},distance=0..3.999] at @s run function server:game/quests/remove_quest_from_log