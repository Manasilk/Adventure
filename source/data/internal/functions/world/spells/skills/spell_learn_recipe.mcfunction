#execute if score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}]
#execute if entity @s[nbt={SelectedItem:{tag:{RecipeId:"1"}}}] run function internal:world/spells/skills/recipes/spell_learn_recipe_<NAME>