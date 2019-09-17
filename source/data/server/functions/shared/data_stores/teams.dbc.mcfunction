# CREATURES
team add Hostile {"translate":"team.hostile"}
team add Neutral {"translate":"team.neutral"}
team add Friendly {"translate":"team.friendly"}
# server:entity.hostile
team modify Hostile color red
team modify Hostile collisionRule pushOtherTeams
team modify Hostile deathMessageVisibility never
team modify Hostile friendlyFire false
team modify Hostile nametagVisibility always
team modify Hostile seeFriendlyInvisibles true
# server:entity.neutral
team modify Neutral color yellow
team modify Neutral collisionRule pushOtherTeams
team modify Neutral deathMessageVisibility never
team modify Neutral friendlyFire false
team modify Neutral nametagVisibility always
team modify Neutral seeFriendlyInvisibles true
# server:entity.friendly
team modify Friendly color green
team modify Friendly collisionRule never
team modify Friendly deathMessageVisibility never
team modify Friendly friendlyFire false
team modify Friendly nametagVisibility always
team modify Friendly seeFriendlyInvisibles true

# QUESTS
team add QuestStart {"translate":"team.quest_start"}
team add QuestEnd {"translate":"team.quest_end"}
#
team modify QuestStart color white
team modify QuestStart collisionRule never
team modify QuestStart deathMessageVisibility never
team modify QuestStart friendlyFire false
team modify QuestStart nametagVisibility always
team modify QuestStart seeFriendlyInvisibles true
team modify QuestStart prefix {"color":"gold","bold":true,"text":"! "}
#
team modify QuestEnd color white
team modify QuestEnd collisionRule never
team modify QuestEnd deathMessageVisibility never
team modify QuestEnd friendlyFire false
team modify QuestEnd nametagVisibility always
team modify QuestEnd seeFriendlyInvisibles true
team modify QuestEnd prefix {"color":"gold","bold":true,"text":"? "}