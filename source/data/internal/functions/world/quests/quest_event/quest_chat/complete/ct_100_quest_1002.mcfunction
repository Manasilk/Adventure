tellraw @a[tag=conversation.stop,distance=0..5.299] {"translate":"quest.end_chat","with":[{"selector":"@s"},{"translate":"quest.text.repair_the_walls"}]}
tellraw @a[tag=conversation.stop,distance=0..5.299] {"translate":"event_type.quest_complete","with":[{"translate":"quest.title.repair_the_walls"}],"color":"yellow"}
clear @a[tag=conversation.stop,distance=0..5.299] #world:quest_item{quest_id:1002}
clear @a[tag=conversation.stop,distance=0..5.299] minecraft:paper{quest_journal:1b,quest_id:1002}