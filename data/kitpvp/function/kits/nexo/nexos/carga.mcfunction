execute if entity @s[nbt={SelectedItem:{id:"minecraft:glowstone"}}] run kill @e[type=block_display,sort=nearest,limit=1,distance=...9,tag=nexo_apagado]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:glowstone"}}] run summon block_display ~ ~ ~ {Tags:["nexo_prendido"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:respawn_anchor",Properties:{charges:"4"}}}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:glowstone"}}] run playsound block.respawn_anchor.charge master @a ~ ~ ~ 2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:glowstone"}}] run clear @s glowstone 1
data remove entity @e[type=interaction,tag=Nexo,sort=nearest,limit=1,distance=...9] interaction