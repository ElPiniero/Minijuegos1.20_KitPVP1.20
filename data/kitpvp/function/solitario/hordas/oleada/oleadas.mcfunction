tellraw @a[tag=!sesion_no_iniciada] [{"text":""},{"text":"- ","bold":true,"color":"dark_red"},{"text":"\"","bold":true,"color":"#b70303"},{"text":"U","bold":true,"color":"#b10606"},{"text":"n","bold":true,"color":"#ab0909"},{"text":"a ","bold":true,"color":"#a50c0c"},{"text":"o","bold":true,"color":"#9f0f0f"},{"text":"l","bold":true,"color":"#991212"},{"text":"e","bold":true,"color":"#931515"},{"text":"a","bold":true,"color":"#8d1818"},{"text":"d","bold":true,"color":"#871b1b"},{"text":"a ","bold":true,"color":"#811e1e"},{"text":"s","bold":true,"color":"#7b2121"},{"text":"e ","bold":true,"color":"#752424"},{"text":"a","bold":true,"color":"#6f2727"},{"text":"p","bold":true,"color":"#692a2a"},{"text":"r","bold":true,"color":"#632d2d"},{"text":"o","bold":true,"color":"#5d3030"},{"text":"x","bold":true,"color":"#573333"},{"text":"i","bold":true,"color":"#513636"},{"text":"m","bold":true,"color":"#4b3939"},{"text":"a","bold":true,"color":"#453c3c"},{"text":"\"","bold":true,"color":"dark_gray"}]
playsound ambient.cave master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1000 0 1
execute positioned -56.00001 71 -24.00001 at @a[tag=!sesion_no_iniciada,sort=furthest,limit=1] as @e[tag=ola-spawn,sort=furthest,limit=1,type=interaction] run tag @s add m-oleada-origen
schedule function kitpvp:solitario/hordas/oleada/generar_mega_oleada 10s



#execute at @n[tag=m-oleada-origen,type=interaction] if data storage supervivencia-zombis {Horda:"2"} run function kitpvp:solitario/hordas/oleada/oleada_2
#execute at @n[tag=m-oleada-origen,type=interaction] if data storage supervivencia-zombis {Horda:"3"} run function kitpvp:solitario/hordas/oleada/oleada_3
#execute at @n[tag=m-oleada-origen,type=interaction] if data storage supervivencia-zombis {Horda:"4"} run function kitpvp:solitario/hordas/oleada/oleada_4
#execute at @n[tag=m-oleada-origen,type=interaction] if data storage supervivencia-zombis {Horda:"5"} run function kitpvp:solitario/hordas/oleada/oleada_5
#
#execute at @n[tag=m-oleada-origen,type=interaction] run summon interaction ~ ~ ~ {Tags:["Vector_oleada","jefes_guia2"]}
#execute at @n[tag=m-oleada-origen,type=interaction] run summon endermite ~ ~ ~ {Tags:["Guia_oleada","jefes_guia2"],Silent:1b,PersistenceRequired:1b}
#execute at @n[tag=m-oleada-origen,type=interaction] run summon zombie_villager ~ ~ ~ {Team:"Zombis",PersistenceRequired:1b,Health:550f,Tags:["jefes","jefes_guia","jefes_guia2","lider-ola"],HandItems:[{id:"netherite_sword",components:{"minecraft:enchantments":{sharpness:10}},count:1},{id:"netherite_sword",components:{"minecraft:enchantments":{sharpness:10}},count:1}],ArmorItems:[{id:"netherite_boots",components:{"minecraft:enchantments":{protection:4,thorns:4}},count:1},{id:"netherite_leggings",components:{"minecraft:enchantments":{protection:4,thorns:4}},count:1},{id:"netherite_chestplate",components:{"minecraft:enchantments":{protection:4,thorns:4}},count:1},{}],HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],attributes:[{id:"minecraft:follow_range",base:500},{id:"minecraft:max_health",base:550},{id:"minecraft:movement_speed",base:0.6}]}
#
#effect give @n[type=endermite,tag=Guia_oleada,tag=jefes_guia2] resistance infinite 4 true
#effect give @n[type=endermite,tag=Guia_oleada,tag=jefes_guia2] weakness infinite 4 true
#effect give @n[type=endermite,tag=Guia_oleada,tag=jefes_guia2] invisibility infinite 0 true
#ride @n[type=endermite,tag=Guia_oleada,tag=jefes_guia2] mount @n[type=interaction,tag=Vector_oleada,tag=jefes_guia2]
#ride @n[type=interaction,tag=Vector_oleada,tag=jefes_guia2] mount @n[type=zombie_villager,tag=lider-ola,tag=jefes_guia2]
#
#tag @n[tag=m-oleada-origen,type=interaction] remove m-oleada-origen
#
#schedule function kitpvp:solitario/hordas/oleada/activar-mega-oleada 1s append