execute if score #world hours matches 0..9 if score #world minutes matches 0..9 run tag @s add _t.h0_m0
execute if score #world hours matches 0..9 if score #world minutes matches 10.. run tag @s add _t.h0_m1
execute if score #world hours matches 10.. if score #world minutes matches 0..9 run tag @s add _t.h1_m0
execute if score #world hours matches 10.. if score #world minutes matches 10.. run tag @s add _t.h1_m1