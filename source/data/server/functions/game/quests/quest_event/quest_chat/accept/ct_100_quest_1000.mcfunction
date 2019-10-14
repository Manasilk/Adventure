tellraw @a[tag=_h.gossip_break,distance=0..3.999] {"translate":"event_type.quest_accepted","with":[{"translate":"quest.title.explore_the_camp"}],"color":"yellow"}
tellraw @a[tag=_h.gossip_break,distance=0..3.999] {"translate":"quest.start_chat","with":[{"selector":"@s"},{"translate":"quest.text.explore_the_camp"}]}
