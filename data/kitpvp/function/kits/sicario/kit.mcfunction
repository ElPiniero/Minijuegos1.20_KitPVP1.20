effect clear @s[tag=!supervivencia-z]
clear @s
function kitpvp:kits/remover_tag
advancement grant @s only kitpvp:kitpvp/primer_kit
tag @s add sin_iniciar
tag @s add Sicario
effect give @s health_boost infinite 0 true
effect give @s regeneration infinite 0 true
item replace entity @s armor.head with player_head[enchantments={binding_curse:1,protection:4},custom_name='[{"text":"Cabeza de Sicario","italic":false,"color":"dark_purple"}]',attribute_modifiers=[{type:"armor",slot:"head",operation:add_value,id:"armor",amount:3}],profile={id:[I;86947625,-2089399094,-1923744366,1929241969],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDEyNzM4NWNiN2U0YzY5NTA2ZWVjMjAxYWZmZDQ2MTZmZjVlYzk0ODBjZjQ3YWFjOTE0NGI2MTE2MmU3ZTZhZSJ9fX0="}]}]
item replace entity @s armor.chest with leather_chestplate[unbreakable={},enchantments={binding_curse:1,protection:5},dyed_color=16777215]
item replace entity @s armor.legs with netherite_leggings[unbreakable={},enchantments={protection:4},trim={material:"minecraft:quartz",pattern:"minecraft:shaper"}]
item replace entity @s armor.feet with netherite_boots[unbreakable={},enchantments={protection:3},trim={material:"minecraft:redstone",pattern:"minecraft:snout"}]
item replace entity @s[tag=!supervivencia-z] hotbar.0 with iron_sword[unbreakable={},enchantments={sharpness:5,knockback:1}]
item replace entity @s[tag=supervivencia-z] hotbar.0 with iron_sword[unbreakable={},enchantments={sharpness:15,sweeping_edge:3,knockback:2}]
item replace entity @s[tag=!supervivencia-z] hotbar.1 with iron_axe[unbreakable={},enchantments={sharpness:5}]
item replace entity @s[tag=supervivencia-z] hotbar.1 with iron_axe[unbreakable={},enchantments={sharpness:20}]
item replace entity @s hotbar.2 with enchanted_golden_apple 2
item replace entity @s hotbar.3 with cooked_cod 20
give @s goat_horn[minecraft:custom_name='{"italic":false,"text":"Escuadrones"}',minecraft:lore=['{"color":"gray","italic":false,"text":"Hazlo sonar y tus"}','{"color":"gray","italic":false,"text":"secuaces vendran"}'],minecraft:instrument="minecraft:seek_goat_horn",max_stack_size=5] 5
item replace entity @s hotbar.5 with ender_pearl 8
item replace entity @s[tag=!supervivencia-z] hotbar.6 with potion[custom_name='[{"text":"Pocion de curacion instantanea","italic": false}]',potion_contents={custom_color:16711680,custom_effects:[{id:"minecraft:instant_health",duration:5,amplifier:3,show_particles:1b}]}]
item replace entity @s[tag=!supervivencia-z] hotbar.7 with potion[custom_name='[{"text":"Pocion de curacion instantanea","italic": false}]',potion_contents={custom_color:16711680,custom_effects:[{id:"minecraft:instant_health",duration:5,amplifier:3,show_particles:1b}]}]
item replace entity @s[tag=!supervivencia-z] hotbar.8 with potion[custom_name='[{"text":"Pocion de curacion instantanea","italic": false}]',potion_contents={custom_color:16711680,custom_effects:[{id:"minecraft:instant_health",duration:5,amplifier:3,show_particles:1b}]}]
item replace entity @s[tag=supervivencia-z] hotbar.6 with splash_potion[custom_name='[{"text":"Pocion arrojadiza de curacion instantanea","italic": false}]',potion_contents={custom_color:16711680,custom_effects:[{id:"minecraft:instant_health",duration:5,amplifier:3,show_particles:1b}]}]
item replace entity @s[tag=supervivencia-z] hotbar.7 with splash_potion[custom_name='[{"text":"Pocion arrojadiza de curacion instantanea","italic": false}]',potion_contents={custom_color:16711680,custom_effects:[{id:"minecraft:instant_health",duration:5,amplifier:3,show_particles:1b}]}]
item replace entity @s[tag=supervivencia-z] hotbar.8 with splash_potion[custom_name='[{"text":"Pocion arrojadiza de curacion instantanea","italic": false}]',potion_contents={custom_color:16711680,custom_effects:[{id:"minecraft:instant_health",duration:5,amplifier:3,show_particles:1b}]}]
give @s[tag=supervivencia-z] minecraft:written_book[minecraft:written_book_content={author:"El Iluminado",generation:0,pages:[{raw:'[["",{"color":"dark_red","obfuscated":true,"text":"a"},{"color":"dark_red","text":" "},{"bold":true,"color":"dark_red","text":"[°-=Carta=-°]"},{"color":"dark_red","text":" "},{"color":"dark_red","obfuscated":true,"text":"a"},"\\n\\n",{"bold":true,"color":"aqua","text":"*"}," ",{"color":"#ff6600","text":"Bebida de Mandarina"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Bebida_Mandarina"},"color":"dark_aqua","text":"[4 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"yellow","text":"*"}," ",{"color":"red","text":"Bebida de Fresa"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Bebida_Fresa"},"color":"dark_aqua","text":"[6 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"light_purple","text":"*"}," ",{"color":"gold","text":"Bebida de Durazno"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Bebida_Durazno"},"color":"dark_aqua","text":"[8 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"light_purple","text":"*"}," ",{"color":"dark_green","text":"Recargas de Kit"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Recarga_Kit"},"color":"dark_aqua","text":"[16 Diamantes]","underlined":true}]]'},{raw:'[["",{"color":"dark_red","obfuscated":true,"text":"a"},{"color":"dark_red","text":" "},{"bold":true,"color":"dark_red","text":"[°-=Carta=-°]"},{"color":"dark_red","text":" "},{"color":"dark_red","obfuscated":true,"text":"a"},"\\n\\n",{"bold":true,"color":"light_purple","text":"*"}," 32 Flechas de ",{"color":"red","text":"Curacion V"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Flecha"},"color":"dark_aqua","text":"[16 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"yellow","text":"*"}," Totem de la ",{"color":"gold","text":"Inmortalidad"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Totems"},"color":"dark_aqua","text":"[4 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"aqua","text":"*"}," ",{"color":"light_purple","text":"Manzana dorada encantada"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger ManzanaEncantada"},"color":"dark_aqua","text":"[1 Diamante]","underlined":true}]]'},{raw:'[["",{"bold":true,"color":"dark_red","obfuscated":true,"text":"a"},{"color":"dark_red","text":" "},{"bold":true,"color":"dark_red","text":"[°-=Carta=-°]"},{"color":"dark_red","text":" "},{"color":"dark_red","obfuscated":true,"text":"a"},"\\n\\n",{"bold":true,"color":"light_purple","text":"*"}," ",{"color":"dark_blue","text":"Congelantes"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Congelante"},"color":"dark_aqua","text":"[10 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"light_purple","text":"*"}," ",{"color":"gray","text":"Golem de"},{"color":"light_purple","text":" "},{"color":"dark_red","text":"Hierro"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Golem"},"color":"dark_aqua","text":"[16 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"light_purple","text":"*"}," ",{"color":"dark_red","text":"Torreta"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Torreta"},"color":"dark_aqua","text":"[16 Diamantes]","underlined":true}]]'}],resolved:1b,title:{raw:"[°-=Carta_de_Productos=-°]"}},minecraft:custom_name='["",{"text":"a","italic":false,"color":"dark_red","obfuscated":true},{"italic":false,"color":"dark_red","text":" "},{"italic":false,"color":"dark_red","text":"[°-=Carta_de_Productos=-°]","bold":true},{"italic":false,"color":"dark_red","text":" "},{"italic":false,"color":"dark_red","text":"a","obfuscated":true}]']
give @s minecraft:carrot_on_a_stick[minecraft:lore=['[{"text":"Localiza al jugador mas","italic":false}]','[{"text":"cercano a una distancia","italic":false}]','[{"text":"de 100 metros","italic":false}]'],minecraft:custom_name='[{"text":"Rastreador","italic":false,"color":"green"}]',item_model="minecraft:compass"] 1
tellraw @s [{"text":"","bold": false},{"text":"\u2757 ","color":"red","bold": true},{"text":"H","color":"#fc4141"},{"text":"a","color":"#fb4343"},{"text":"z ","color":"#fa4545"},{"text":"s","color":"#f94747"},{"text":"o","color":"#f84949"},{"text":"n","color":"#f74b4b"},{"text":"a","color":"#f64d4d"},{"text":"r ","color":"#f54f4f"},{"text":"e","color":"#f45151"},{"text":"l ","color":"#f35353"},{"text":"c","color":"#f25555"},{"text":"u","color":"#f15757"},{"text":"e","color":"#f05a5a"},{"text":"r","color":"#ef5c5c"},{"text":"n","color":"#ee5e5e"},{"text":"o ","color":"#ed6060"},{"text":"p","color":"#ec6262"},{"text":"a","color":"#eb6464"},{"text":"r","color":"#ea6666"},{"text":"a ","color":"#e96868"},{"text":"i","color":"#e76a6a"},{"text":"n","color":"#e66c6c"},{"text":"v","color":"#e56e6e"},{"text":"o","color":"#e47070"},{"text":"c","color":"#e37373"},{"text":"a","color":"#e27575"},{"text":"r ","color":"#e17777"},{"text":"a ","color":"#e07979"},{"text":"t","color":"#df7b7b"},{"text":"u ","color":"#de7d7d"},{"text":"e","color":"#dd7f7f"},{"text":"s","color":"#dc8181"},{"text":"c","color":"#db8383"},{"text":"u","color":"#da8585"},{"text":"a","color":"#d98787"},{"text":"d","color":"#d88989"},{"text":"r","color":"#d78c8c"},{"text":"o","color":"#d68e8e"},{"text":"n","color":"#d59090"},{"text":", ","color":"#d49292"},{"text":"e","color":"#d29494"},{"text":"n ","color":"#d19696"},{"text":"l","color":"#d09898"},{"text":"o ","color":"#cf9a9a"},{"text":"q","color":"#ce9c9c"},{"text":"u","color":"#cd9e9e"},{"text":"e ","color":"#cca0a0"},{"text":"e","color":"#cba2a2"},{"text":"l","color":"#caa5a5"},{"text":"l","color":"#c9a7a7"},{"text":"o","color":"#c8a9a9"},{"text":"s ","color":"#c7abab"},{"text":"t","color":"#c6adad"},{"text":"e ","color":"#c5afaf"},{"text":"c","color":"#c4b1b1"},{"text":"u","color":"#c3b3b3"},{"text":"b","color":"#c2b5b5"},{"text":"r","color":"#c1b7b7"},{"text":"e","color":"#c0b9b9"},{"text":"n ","color":"#bfbbbb"},{"text":"p","color":"gray"},{"text":"u","color":"#bfbfbf"},{"text":"e","color":"#c0c0c0"},{"text":"d","color":"#c1c1c1"},{"text":"e","color":"#c2c2c2"},{"text":"s ","color":"#c3c3c3"},{"text":"c","color":"#c4c4c4"},{"text":"u","color":"#c5c5c5"},{"text":"r","color":"#c6c6c6"},{"text":"a","color":"#c7c7c7"},{"text":"r","color":"#c8c8c8"},{"text":"t","color":"#c9c9c9"},{"text":"e ","color":"#cacaca"},{"text":"t","color":"#cbcbcb"},{"text":"o","color":"#cccccc"},{"text":"d","color":"#cdcdcd"},{"text":"a ","color":"#cfcfcf"},{"text":"l","color":"#d0d0d0"},{"text":"a ","color":"#d1d1d1"},{"text":"v","color":"#d2d2d2"},{"text":"i","color":"#d3d3d3"},{"text":"d","color":"#d4d4d4"},{"text":"a ","color":"#d5d5d5"},{"text":"c","color":"#d6d6d6"},{"text":"o","color":"#d7d7d7"},{"text":"n ","color":"#d8d8d8"},{"text":"l","color":"#d9d9d9"},{"text":"a","color":"#dadada"},{"text":"s ","color":"#dbdbdb"},{"text":"p","color":"#dcdcdc"},{"text":"o","color":"#dddddd"},{"text":"c","color":"#dfdfdf"},{"text":"i","color":"#e0e0e0"},{"text":"o","color":"#e1e1e1"},{"text":"n","color":"#e2e2e2"},{"text":"e","color":"#e3e3e3"},{"text":"s","color":"#e4e4e4"},{"text":", ","color":"#e5e5e5"},{"text":"o ","color":"#e6e6e6"},{"text":"a","color":"#e7e7e7"},{"text":"h","color":"#e8e8e8"},{"text":"o","color":"#e9e9e9"},{"text":"r","color":"#eaeaea"},{"text":"r","color":"#ebebeb"},{"text":"a","color":"#ececec"},{"text":"r","color":"#ededed"},{"text":"l","color":"#efefef"},{"text":"a","color":"#f0f0f0"},{"text":"s ","color":"#f1f1f1"},{"text":"u","color":"#f2f2f2"},{"text":"s","color":"#f3f3f3"},{"text":"a","color":"#f4f4f4"},{"text":"n","color":"#f5f5f5"},{"text":"d","color":"#f6f6f6"},{"text":"o ","color":"#f7f7f7"},{"text":"p","color":"#f8f8f8"},{"text":"e","color":"#f9f9f9"},{"text":"s","color":"#fafafa"},{"text":"c","color":"#fbfbfb"},{"text":"a","color":"#fcfcfc"},{"text":"d","color":"#fdfdfd"},{"text":"o","color":"white"}]
playsound entity.vindicator.celebrate master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1
execute as @s[tag=!supervivencia-z] run fill 21 235 140 21 234 140 iron_bars
execute as @s[tag=!supervivencia-z] run playsound entity.zombie.attack_iron_door master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 0.7
execute as @s[tag=!supervivencia-z] run scoreboard players add @s Desactivando 1
execute as @s[tag=supervivencia-z,tag=!yamero-survival-z] run function kitpvp:cuerpo_del_juego/votos/survival-z/inicio/iniciando
execute as @s[tag=supervivencia-z,tag=!s-z-afavor] run function kitpvp:cuerpo_del_juego/votos/survival-z/inicio/s-z_a_favor