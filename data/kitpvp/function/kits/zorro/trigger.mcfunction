execute as @s[nbt={SelectedItem:{id:"minecraft:egg",components:{"minecraft:custom_name":'{"color":"#FF003E","extra":[{"color":"#FB003A","text":"a"},{"color":"#F80037","text":"n"},{"color":"#F40034","text":"z"},{"color":"#F10030","text":"a"},{"color":"#ED002D","text":"d"},{"color":"#EA002A","text":"o"},{"color":"#E70027","text":"r "},{"color":"#E30023","text":"d"},{"color":"#E00020","text":"e "},{"color":"#DC001D","text":"b"},{"color":"#D9001A","text":"a"},{"color":"#D50016","text":"y"},{"color":"#D20013","text":"a "},{"color":"#CF0010","text":"p"},{"color":"#CB000D","text":"i"},{"color":"#C80009","text":"c"},{"color":"#C40006","text":"o"},{"color":"#C10003","text":"s"},{"color":"dark_red","text":"a"}],"italic":false,"text":"L"}'}}},tag=!LanzadorBayaPicosa] run tag @s add LanzadorBayaPicosa
execute if score @s[tag=LanzadorBayaPicosa] Huevo matches 1.. run function kitpvp:kits/zorro/bayas_picosas/disparo
execute as @s[nbt=!{SelectedItem:{id:"minecraft:egg",components:{"minecraft:custom_name":'{"color":"#FF003E","extra":[{"color":"#FB003A","text":"a"},{"color":"#F80037","text":"n"},{"color":"#F40034","text":"z"},{"color":"#F10030","text":"a"},{"color":"#ED002D","text":"d"},{"color":"#EA002A","text":"o"},{"color":"#E70027","text":"r "},{"color":"#E30023","text":"d"},{"color":"#E00020","text":"e "},{"color":"#DC001D","text":"b"},{"color":"#D9001A","text":"a"},{"color":"#D50016","text":"y"},{"color":"#D20013","text":"a "},{"color":"#CF0010","text":"p"},{"color":"#CB000D","text":"i"},{"color":"#C80009","text":"c"},{"color":"#C40006","text":"o"},{"color":"#C10003","text":"s"},{"color":"dark_red","text":"a"}],"italic":false,"text":"L"}'}}},tag=LanzadorBayaPicosa] run tag @s remove LanzadorBayaPicosa