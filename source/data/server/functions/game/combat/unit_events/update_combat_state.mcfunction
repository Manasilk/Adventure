#Keep player in combat if hit or hit by entity
scoreboard players set @s[scores={_H.IsVictim=1}] Combat.Decay 0
scoreboard players set @s[scores={_H.HasVictim=1}] Combat.Decay 0