execute if score #world __hours matches 0..9 if score #world __minutes matches 0..9 run tag @s add _t.h0_m0
execute if score #world __hours matches 0..9 if score #world __minutes matches 10.. run tag @s add _t.h0_m1
execute if score #world __hours matches 10.. if score #world __minutes matches 0..9 run tag @s add _t.h1_m0
execute if score #world __hours matches 10.. if score #world __minutes matches 10.. run tag @s add _t.h1_m1