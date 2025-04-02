effect clear @s[tag=!supervivencia-z]
clear @s
function kitpvp:kits/remover_tag
advancement grant @s only kitpvp:kitpvp/primer_kit
tag @s add sin_iniciar
tag @s add Militar
tag @s remove R-Recargar
tag @s remove E-Recargar
tag @s remove Escopeta
tag @s remove Rifle
effect give @s resistance infinite 2 true
effect give @s night_vision infinite 0 true
item replace entity @s armor.head with player_head[enchantments={binding_curse:1},custom_name='[{"text":"Cabeza de Militar","italic":false,"color":"dark_green"}]',lore=['[{"text":"- Resistencia III","color":"white"}]','[{"text":"- Velocidad","italic":true,"color":"white"}]'],attribute_modifiers=[{type:"armor",slot:"head",operation:add_value,id:"armor",amount:3}],profile={id:[I;1274727409,-2038349023,-1713037642,-31022116],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2MzZWUwYjZkNWUwMDEzNTY5YzQzYjEzMjAxN2U0MzQ1MjM0Y2MyYmM5N2ZhNjVhYTNjOTZhZWQ3MzA1NjBkNyJ9fX0="}]}]
item replace entity @s armor.chest with elytra[unbreakable={},enchantments={projectile_protection:4,binding_curse:1},attribute_modifiers=[{type:"armor",slot:"chest",operation:add_value,id:"armor",amount:3}]]
item replace entity @s armor.legs with leather_leggings[unbreakable={},dyed_color=1403171,trim={material:"minecraft:emerald",pattern:"minecraft:silence"}]
item replace entity @s armor.feet with leather_boots[unbreakable={},enchantments={feather_falling:4},dyed_color=1403171,trim={material:"minecraft:emerald",pattern:"minecraft:ward"}]
execute unless data storage modo_de_pvp {Mapa:"habitacion"} run give @s potion[custom_name='{"italic":false,"text":"Lanzadores"}',minecraft:potion_contents={custom_color:1167264,custom_effects:[{id:"minecraft:jump_boost",amplifier:24,duration:60,show_particles:0b}]},max_stack_size=10] 10
give @s apple 20
give @s spectral_arrow[custom_name='[{"text":"Cartucho de Escopeta","italic":false,"color":"white"}]'] 24
give @s firework_rocket[custom_name='[{"text":"Misil","italic":false}]',fireworks={flight_duration:0b}] 6
give @s arrow[custom_name='[{"text":"Bala de Rifle","italic":false,"color":"white"}]'] 120
give @s[tag=supervivencia-z] minecraft:written_book[minecraft:written_book_content={author:"El Iluminado",generation:0,pages:[{raw:'[["",{"color":"dark_red","obfuscated":true,"text":"a"},{"color":"dark_red","text":" "},{"bold":true,"color":"dark_red","text":"[°-=Carta=-°]"},{"color":"dark_red","text":" "},{"color":"dark_red","obfuscated":true,"text":"a"},"\\n\\n",{"bold":true,"color":"aqua","text":"*"}," ",{"color":"#ff6600","text":"Bebida de Mandarina"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Bebida_Mandarina"},"color":"dark_aqua","text":"[4 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"yellow","text":"*"}," ",{"color":"red","text":"Bebida de Fresa"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Bebida_Fresa"},"color":"dark_aqua","text":"[6 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"light_purple","text":"*"}," ",{"color":"gold","text":"Bebida de Durazno"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Bebida_Durazno"},"color":"dark_aqua","text":"[8 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"light_purple","text":"*"}," ",{"color":"dark_green","text":"Recargas de Kit"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Recarga_Kit"},"color":"dark_aqua","text":"[16 Diamantes]","underlined":true}]]'},{raw:'[["",{"color":"dark_red","obfuscated":true,"text":"a"},{"color":"dark_red","text":" "},{"bold":true,"color":"dark_red","text":"[°-=Carta=-°]"},{"color":"dark_red","text":" "},{"color":"dark_red","obfuscated":true,"text":"a"},"\\n\\n",{"bold":true,"color":"light_purple","text":"*"}," 32 Flechas de ",{"color":"red","text":"Curacion V"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Flecha"},"color":"dark_aqua","text":"[16 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"yellow","text":"*"}," Totem de la ",{"color":"gold","text":"Inmortalidad"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Totems"},"color":"dark_aqua","text":"[4 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"aqua","text":"*"}," ",{"color":"light_purple","text":"Manzana dorada encantada"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger ManzanaEncantada"},"color":"dark_aqua","text":"[1 Diamante]","underlined":true}]]'},{raw:'[["",{"bold":true,"color":"dark_red","obfuscated":true,"text":"a"},{"color":"dark_red","text":" "},{"bold":true,"color":"dark_red","text":"[°-=Carta=-°]"},{"color":"dark_red","text":" "},{"color":"dark_red","obfuscated":true,"text":"a"},"\\n\\n",{"bold":true,"color":"light_purple","text":"*"}," ",{"color":"dark_blue","text":"Congelantes"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Congelante"},"color":"dark_aqua","text":"[10 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"light_purple","text":"*"}," ",{"color":"gray","text":"Golem de"},{"color":"light_purple","text":" "},{"color":"dark_red","text":"Hierro"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Golem"},"color":"dark_aqua","text":"[16 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"light_purple","text":"*"}," ",{"color":"dark_red","text":"Torreta"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Torreta"},"color":"dark_aqua","text":"[16 Diamantes]","underlined":true}]]'}],resolved:1b,title:{raw:"[°-=Carta_de_Productos=-°]"}},minecraft:custom_name='["",{"text":"a","italic":false,"color":"dark_red","obfuscated":true},{"italic":false,"color":"dark_red","text":" "},{"italic":false,"color":"dark_red","text":"[°-=Carta_de_Productos=-°]","bold":true},{"italic":false,"color":"dark_red","text":" "},{"italic":false,"color":"dark_red","text":"a","obfuscated":true}]']
give @s minecraft:carrot_on_a_stick[minecraft:lore=['[{"text":"Localiza al jugador mas","italic":false}]','[{"text":"cercano a una distancia","italic":false}]','[{"text":"de 100 metros","italic":false}]'],minecraft:custom_name='[{"text":"Rastreador","italic":false,"color":"green"}]',item_model="minecraft:compass"] 1
tellraw @s [{"text":"- ","color":"gray"},{"text":"P","color":"#40fe40"},{"text":"a","color":"#41fe41"},{"text":"r","color":"#43fe43"},{"text":"a ","color":"#44fe44"},{"text":"r","color":"#45fe45"},{"text":"e","color":"#47fe47"},{"text":"c","color":"#48fe48"},{"text":"a","color":"#49fe49"},{"text":"r","color":"#4bfe4b"},{"text":"g","color":"#4cfe4c"},{"text":"a","color":"#4dfe4d"},{"text":"r ","color":"#4ffe4f"},{"text":"e","color":"#50fe50"},{"text":"l ","color":"#52fe52"},{"text":"R","color":"#53fe53"},{"text":"i","color":"#54fe54"},{"text":"f","color":"#56fe56"},{"text":"l","color":"#57fe57"},{"text":"e","color":"#58fe58"},{"text":": ","color":"#5afe5a"},{"text":"c","color":"#5bfe5b"},{"text":"o","color":"#5cfe5c"},{"text":"l","color":"#5efe5e"},{"text":"o","color":"#5ffe5f"},{"text":"c","color":"#61fe61"},{"text":"a ","color":"#62fe62"},{"text":"l","color":"#63fe63"},{"text":"a","color":"#65fe65"},{"text":"s ","color":"#66fe66"},{"text":"'","color":"#67fe67"},{"text":"B","color":"#69fe69"},{"text":"a","color":"#6afe6a"},{"text":"l","color":"#6bfe6b"},{"text":"a","color":"#6dfe6d"},{"text":"s ","color":"#6efe6e"},{"text":"d","color":"#70fe70"},{"text":"e ","color":"#71fe71"},{"text":"r","color":"#72fe72"},{"text":"i","color":"#74fe74"},{"text":"f","color":"#75fe75"},{"text":"l","color":"#76fe76"},{"text":"e","color":"#78fe78"},{"text":"' ","color":"#79fe79"},{"text":"e","color":"#7afe7a"},{"text":"n ","color":"#7cfe7c"},{"text":"t","color":"#7dfe7d"},{"text":"u ","color":"#7ffe7f"},{"text":"s","color":"#80fe80"},{"text":"e","color":"#81fe81"},{"text":"g","color":"#83fe83"},{"text":"u","color":"#84fe84"},{"text":"n","color":"#85fe85"},{"text":"d","color":"#87fe87"},{"text":"a ","color":"#88fe88"},{"text":"m","color":"#89fe89"},{"text":"a","color":"#8bfe8b"},{"text":"n","color":"#8cfe8c"},{"text":"o ","color":"#8dfe8d"},{"text":"y ","color":"#8ffe8f"},{"text":"c","color":"#90fe90"},{"text":"a","color":"#92fe92"},{"text":"r","color":"#93fe93"},{"text":"g","color":"#94fe94"},{"text":"a ","color":"#96fe96"},{"text":"e","color":"#97fe97"},{"text":"l ","color":"#98fe98"},{"text":"r","color":"#9afe9a"},{"text":"i","color":"#9bfe9b"},{"text":"f","color":"#9cfe9c"},{"text":"l","color":"#9efe9e"},{"text":"e","color":"#9ffe9f"},{"text":", ","color":"#a1fea1"},{"text":"s","color":"#a2fea2"},{"text":"i ","color":"#a3fea3"},{"text":"q","color":"#a5fea5"},{"text":"u","color":"#a6fea6"},{"text":"i","color":"#a7fea7"},{"text":"e","color":"#a9fea9"},{"text":"r","color":"#aafeaa"},{"text":"e","color":"#abfeab"},{"text":"s ","color":"#adfead"},{"text":"d","color":"#aefeae"},{"text":"e","color":"#b0feb0"},{"text":"s","color":"#b1feb1"},{"text":"c","color":"#b2feb2"},{"text":"a","color":"#b4feb4"},{"text":"r","color":"#b5feb5"},{"text":"g","color":"#b6feb6"},{"text":"a","color":"#b8feb8"},{"text":"r","color":"#b9feb9"},{"text":"l","color":"#bafeba"},{"text":"o ","color":"#bcfebc"},{"text":"h","color":"#bdfebd"},{"text":"a","color":"#bffebf"},{"text":"z ","color":"#c0fec0"},{"text":"c","color":"#c1fec1"},{"text":"l","color":"#c3fec3"},{"text":"i","color":"#c4fec4"},{"text":"c","color":"#c5fec5"},{"text":"k ","color":"#c7fec7"},{"text":"i","color":"#c8fec8"},{"text":"z","color":"#c9fec9"},{"text":"q","color":"#cbfecb"},{"text":"u","color":"#ccfecc"},{"text":"i","color":"#cdfecd"},{"text":"e","color":"#cffecf"},{"text":"r","color":"#d0fed0"},{"text":"d","color":"#d2fed2"},{"text":"o ","color":"#d3fed3"},{"text":"e","color":"#d4fed4"},{"text":"n ","color":"#d6fed6"},{"text":"l","color":"#d7fed7"},{"text":"a ","color":"#d8fed8"},{"text":"z","color":"#dafeda"},{"text":"o","color":"#dbfedb"},{"text":"n","color":"#dcfedc"},{"text":"a ","color":"#defede"},{"text":"a ","color":"#dffedf"},{"text":"t","color":"#e1fee1"},{"text":"u","color":"#e2fee2"},{"text":"s ","color":"#e3fee3"},{"text":"p","color":"#e5fee5"},{"text":"i","color":"#e6fee6"},{"text":"e","color":"#e7fee7"},{"text":"s ","color":"#e9fee9"},{"text":"[","color":"#eafeea"},{"text":"F","color":"#ebfeeb"},{"text":"3 ","color":"#edfeed"},{"text":"+ ","color":"#eefeee"},{"text":"B","color":"#f0fef0"},{"text":", ","color":"#f1fef1"},{"text":"p","color":"#f2fef2"},{"text":"a","color":"#f4fef4"},{"text":"r","color":"#f5fef5"},{"text":"a ","color":"#f6fef6"},{"text":"v","color":"#f8fef8"},{"text":"e","color":"#f9fef9"},{"text":"r","color":"#fafefa"},{"text":"l","color":"#fcfefc"},{"text":"o","color":"#fdfefd"},{"text":"]","color":"white"}]
tellraw @s [{"text":"- ","color":"gray"},{"text":"P","color":"#be01be"},{"text":"a","color":"#be02be"},{"text":"r","color":"#bf04bf"},{"text":"a ","color":"#bf05bf"},{"text":"r","color":"#bf06bf"},{"text":"e","color":"#c008c0"},{"text":"c","color":"#c009c0"},{"text":"a","color":"#c00ac0"},{"text":"r","color":"#c10cc1"},{"text":"g","color":"#c10dc1"},{"text":"a","color":"#c10fc1"},{"text":"r ","color":"#c210c2"},{"text":"l","color":"#c211c2"},{"text":"a ","color":"#c213c2"},{"text":"e","color":"#c314c3"},{"text":"s","color":"#c315c3"},{"text":"c","color":"#c317c3"},{"text":"o","color":"#c418c4"},{"text":"p","color":"#c41ac4"},{"text":"e","color":"#c41bc4"},{"text":"t","color":"#c51cc5"},{"text":"a","color":"#c51ec5"},{"text":": ","color":"#c61fc6"},{"text":"c","color":"#c620c6"},{"text":"o","color":"#c622c6"},{"text":"l","color":"#c723c7"},{"text":"o","color":"#c725c7"},{"text":"c","color":"#c726c7"},{"text":"a ","color":"#c827c8"},{"text":"l","color":"#c829c8"},{"text":"o","color":"#c82ac8"},{"text":"s ","color":"#c92bc9"},{"text":"'","color":"#c92dc9"},{"text":"C","color":"#c92ec9"},{"text":"a","color":"#ca2fca"},{"text":"r","color":"#ca31ca"},{"text":"t","color":"#ca32ca"},{"text":"u","color":"#cb34cb"},{"text":"c","color":"#cb35cb"},{"text":"h","color":"#cb36cb"},{"text":"o","color":"#cc38cc"},{"text":"s ","color":"#cc39cc"},{"text":"d","color":"#cd3acd"},{"text":"e ","color":"#cd3ccd"},{"text":"e","color":"#cd3dcd"},{"text":"s","color":"#ce3fce"},{"text":"c","color":"#ce40ce"},{"text":"o","color":"#ce41ce"},{"text":"p","color":"#cf43cf"},{"text":"e","color":"#cf44cf"},{"text":"t","color":"#cf45cf"},{"text":"a","color":"#d047d0"},{"text":"' ","color":"#d048d0"},{"text":"c","color":"#d04ad0"},{"text":"o","color":"#d14bd1"},{"text":"m","color":"#d14cd1"},{"text":"o ","color":"#d14ed1"},{"text":"t","color":"#d24fd2"},{"text":"u ","color":"#d250d2"},{"text":"f","color":"#d252d2"},{"text":"l","color":"#d353d3"},{"text":"e","color":"#d355d3"},{"text":"c","color":"#d456d4"},{"text":"h","color":"#d457d4"},{"text":"a ","color":"#d459d4"},{"text":"d","color":"#d55ad5"},{"text":"e ","color":"#d55bd5"},{"text":"s","color":"#d55dd5"},{"text":"e","color":"#d65ed6"},{"text":"l","color":"#d65fd6"},{"text":"e","color":"#d661d6"},{"text":"c","color":"#d762d7"},{"text":"c","color":"#d764d7"},{"text":"i","color":"#d765d7"},{"text":"o","color":"#d866d8"},{"text":"n ","color":"#d868d8"},{"text":"y ","color":"#d869d8"},{"text":"c","color":"#d96ad9"},{"text":"a","color":"#d96cd9"},{"text":"r","color":"#d96dd9"},{"text":"g","color":"#da6fda"},{"text":"a ","color":"#da70da"},{"text":"l","color":"#db71db"},{"text":"a ","color":"#db73db"},{"text":"e","color":"#db74db"},{"text":"s","color":"#dc75dc"},{"text":"c","color":"#dc77dc"},{"text":"o","color":"#dc78dc"},{"text":"p","color":"#dd7add"},{"text":"e","color":"#dd7bdd"},{"text":"t","color":"#dd7cdd"},{"text":"a ","color":"#de7ede"},{"text":"m","color":"#de7fde"},{"text":"i","color":"#de80de"},{"text":"e","color":"#df82df"},{"text":"n","color":"#df83df"},{"text":"t","color":"#df84df"},{"text":"r","color":"#e086e0"},{"text":"a","color":"#e087e0"},{"text":"s ","color":"#e089e0"},{"text":"e","color":"#e18ae1"},{"text":"s","color":"#e18be1"},{"text":"t","color":"#e18de1"},{"text":"e ","color":"#e28ee2"},{"text":"e","color":"#e28fe2"},{"text":"n ","color":"#e391e3"},{"text":"'","color":"#e392e3"},{"text":"c","color":"#e394e3"},{"text":"o","color":"#e495e4"},{"text":"o","color":"#e496e4"},{"text":"l","color":"#e498e4"},{"text":"d","color":"#e599e5"},{"text":"o","color":"#e59ae5"},{"text":"w","color":"#e59ce5"},{"text":"n","color":"#e69de6"},{"text":"'","color":"#e69fe6"},{"text":", ","color":"#e6a0e6"},{"text":"s","color":"#e7a1e7"},{"text":"i ","color":"#e7a3e7"},{"text":"q","color":"#e7a4e7"},{"text":"u","color":"#e8a5e8"},{"text":"i","color":"#e8a7e8"},{"text":"e","color":"#e8a8e8"},{"text":"r","color":"#e9aae9"},{"text":"e","color":"#e9abe9"},{"text":"s ","color":"#eaacea"},{"text":"d","color":"#eaaeea"},{"text":"e","color":"#eaafea"},{"text":"s","color":"#ebb0eb"},{"text":"c","color":"#ebb2eb"},{"text":"a","color":"#ebb3eb"},{"text":"r","color":"#ecb4ec"},{"text":"g","color":"#ecb6ec"},{"text":"a","color":"#ecb7ec"},{"text":"r","color":"#edb9ed"},{"text":"l","color":"#edbaed"},{"text":"o ","color":"#edbbed"},{"text":"h","color":"#eebdee"},{"text":"a","color":"#eebeee"},{"text":"z ","color":"#eebfee"},{"text":"c","color":"#efc1ef"},{"text":"l","color":"#efc2ef"},{"text":"i","color":"#efc4ef"},{"text":"c","color":"#f0c5f0"},{"text":"k ","color":"#f0c6f0"},{"text":"i","color":"#f1c8f1"},{"text":"z","color":"#f1c9f1"},{"text":"q","color":"#f1caf1"},{"text":"u","color":"#f2ccf2"},{"text":"i","color":"#f2cdf2"},{"text":"e","color":"#f2cff2"},{"text":"r","color":"#f3d0f3"},{"text":"d","color":"#f3d1f3"},{"text":"o ","color":"#f3d3f3"},{"text":"e","color":"#f4d4f4"},{"text":"n ","color":"#f4d5f4"},{"text":"l","color":"#f4d7f4"},{"text":"a ","color":"#f5d8f5"},{"text":"z","color":"#f5d9f5"},{"text":"o","color":"#f5dbf5"},{"text":"n","color":"#f6dcf6"},{"text":"a ","color":"#f6def6"},{"text":"a ","color":"#f6dff6"},{"text":"t","color":"#f7e0f7"},{"text":"u","color":"#f7e2f7"},{"text":"s ","color":"#f8e3f8"},{"text":"p","color":"#f8e4f8"},{"text":"i","color":"#f8e6f8"},{"text":"e","color":"#f9e7f9"},{"text":"s ","color":"#f9e9f9"},{"text":"[","color":"#f9eaf9"},{"text":"F","color":"#faebfa"},{"text":"3 ","color":"#faedfa"},{"text":"+ ","color":"#faeefa"},{"text":"B","color":"#fbeffb"},{"text":", ","color":"#fbf1fb"},{"text":"p","color":"#fbf2fb"},{"text":"a","color":"#fcf4fc"},{"text":"r","color":"#fcf5fc"},{"text":"a ","color":"#fcf6fc"},{"text":"v","color":"#fdf8fd"},{"text":"e","color":"#fdf9fd"},{"text":"r","color":"#fdfafd"},{"text":"l","color":"#fefcfe"},{"text":"o","color":"#fefdfe"},{"text":"]","color":"white"}]
tellraw @s [{"text":"- ","color":"gray"},{"text":"P","color":"#d9a438"},{"text":"a","color":"#daa63c"},{"text":"r","color":"#dba840"},{"text":"a ","color":"#dcaa44"},{"text":"c","color":"#dcac48"},{"text":"a","color":"#ddae4c"},{"text":"r","color":"#deb051"},{"text":"g","color":"#dfb255"},{"text":"a","color":"#dfb359"},{"text":"r ","color":"#e0b55d"},{"text":"e","color":"#e1b761"},{"text":"l ","color":"#e2b965"},{"text":"L","color":"#e3bb69"},{"text":"a","color":"#e3bd6e"},{"text":"n","color":"#e4bf72"},{"text":"z","color":"#e5c176"},{"text":"a","color":"#e6c27a"},{"text":"m","color":"#e6c47e"},{"text":"i","color":"#e7c682"},{"text":"s","color":"#e8c886"},{"text":"i","color":"#e9ca8b"},{"text":"l","color":"#eacc8f"},{"text":"e","color":"#eace93"},{"text":"s","color":"#ebd097"},{"text":": ","color":"#ecd19b"},{"text":"u","color":"#edd39f"},{"text":"s","color":"#edd5a3"},{"text":"a ","color":"#eed7a7"},{"text":"l","color":"#efd9ac"},{"text":"o","color":"#f0dbb0"},{"text":"s ","color":"#f1ddb4"},{"text":"f","color":"#f1dfb8"},{"text":"u","color":"#f2e0bc"},{"text":"e","color":"#f3e2c0"},{"text":"g","color":"#f4e4c5"},{"text":"o","color":"#f4e6c9"},{"text":"s ","color":"#f5e8cd"},{"text":"a","color":"#f6ead1"},{"text":"r","color":"#f7ecd5"},{"text":"t","color":"#f8eed9"},{"text":"i","color":"#f8efdd"},{"text":"f","color":"#f9f1e2"},{"text":"i","color":"#faf3e6"},{"text":"c","color":"#fbf5ea"},{"text":"i","color":"#fbf7ee"},{"text":"a","color":"#fcf9f2"},{"text":"l","color":"#fdfbf6"},{"text":"e","color":"#fefdfa"},{"text":"s","color":"white"}]
tellraw @s [{"text":"","bold": false},{"text":"\u2757 ","color":"red","bold": true},{"text":"P","color":"#126210"},{"text":"a","color":"#136411"},{"text":"r","color":"#136611"},{"text":"a ","color":"#146812"},{"text":"v","color":"#156a13"},{"text":"o","color":"#156d13"},{"text":"l","color":"#166f14"},{"text":"a","color":"#167115"},{"text":"r","color":"#177315"},{"text":", ","color":"#187516"},{"text":"t","color":"#187717"},{"text":"o","color":"#197a17"},{"text":"m","color":"#1a7c18"},{"text":"a ","color":"#1a7e19"},{"text":"u","color":"#1b8019"},{"text":"n ","color":"#1b821a"},{"text":"l","color":"#1c851b"},{"text":"a","color":"#1d871b"},{"text":"n","color":"#1d891c"},{"text":"z","color":"#1e8b1c"},{"text":"a","color":"#1f8d1d"},{"text":"d","color":"#1f8f1e"},{"text":"o","color":"#20921e"},{"text":"r ","color":"#20941f"},{"text":"y ","color":"#219620"},{"text":"s","color":"#229820"},{"text":"a","color":"#229a21"},{"text":"l","color":"#239d22"},{"text":"t","color":"#249f22"},{"text":"a","color":"#24a123"},{"text":", ","color":"#25a324"},{"text":"t","color":"#25a524"},{"text":"e ","color":"#26a725"},{"text":"m","color":"#27aa26"},{"text":"a","color":"#27ac26"},{"text":"n","color":"#28ae27"},{"text":"t","color":"#28b027"},{"text":"e","color":"#29b228"},{"text":"n","color":"#2ab429"},{"text":"d","color":"#2ab729"},{"text":"r","color":"#2bb92a"},{"text":"a","color":"#2cbb2b"},{"text":"s ","color":"#2cbd2b"},{"text":"u","color":"#2dbf2c"},{"text":"n ","color":"#2dc22d"},{"text":"t","color":"#2ec42d"},{"text":"i","color":"#2fc62e"},{"text":"e","color":"#2fc82f"},{"text":"m","color":"#30ca2f"},{"text":"p","color":"#31cc30"},{"text":"o ","color":"#31cf31"},{"text":"m","color":"#32d131"},{"text":"a","color":"#32d332"},{"text":"y","color":"#33d533"},{"text":"o","color":"#34d733"},{"text":"r ","color":"#34da34"},{"text":"p","color":"#35dc34"},{"text":"a","color":"#36de35"},{"text":"t","color":"#36e036"},{"text":"r","color":"#37e236"},{"text":"u","color":"#37e437"},{"text":"l","color":"#38e738"},{"text":"l","color":"#39e938"},{"text":"a","color":"#39eb39"},{"text":"n","color":"#3aed3a"},{"text":"d","color":"#3aef3a"},{"text":"o ","color":"#3bf23b"},{"text":"d","color":"#3cf43c"},{"text":"e","color":"#3cf63c"},{"text":"s","color":"#3df83d"},{"text":"d","color":"#3efa3e"},{"text":"e l","color":"#3efc3e"},{"text":"o ","color":"#3dfa3d"},{"text":"a","color":"#3df83d"},{"text":"l","color":"#3cf63c"},{"text":"t","color":"#3bf43b"},{"text":"o","color":"#3bf23b"},{"text":". ","color":"#3aef3a"},{"text":"C","color":"#39ed39"},{"text":"a","color":"#39eb38"},{"text":"d","color":"#38e938"},{"text":"a ","color":"#37e737"},{"text":"a","color":"#37e536"},{"text":"r","color":"#36e236"},{"text":"m","color":"#35e035"},{"text":"a ","color":"#35de34"},{"text":"u","color":"#34dc33"},{"text":"s","color":"#33da33"},{"text":"a ","color":"#33d832"},{"text":"m","color":"#32d531"},{"text":"u","color":"#31d331"},{"text":"n","color":"#31d130"},{"text":"i","color":"#30cf2f"},{"text":"c","color":"#2fcd2e"},{"text":"i","color":"#2fcb2e"},{"text":"o","color":"#2ec82d"},{"text":"n ","color":"#2dc62c"},{"text":"u","color":"#2dc42b"},{"text":"n","color":"#2cc22b"},{"text":"i","color":"#2bc02a"},{"text":"c","color":"#2bbe29"},{"text":"a","color":"#2abb29"},{"text":", ","color":"#29b928"},{"text":"m","color":"#29b727"},{"text":"a","color":"#28b526"},{"text":"n","color":"#27b326"},{"text":"t","color":"#27b125"},{"text":"e","color":"#26ae24"},{"text":"n ","color":"#25ac24"},{"text":"t","color":"#24aa23"},{"text":"u ","color":"#24a822"},{"text":"d","color":"#23a621"},{"text":"i","color":"#22a421"},{"text":"s","color":"#22a120"},{"text":"t","color":"#219f1f"},{"text":"a","color":"#209d1f"},{"text":"n","color":"#209b1e"},{"text":"c","color":"#1f991d"},{"text":"i","color":"#1e971c"},{"text":"a ","color":"#1e941c"},{"text":"y ","color":"#1d921b"},{"text":"n","color":"#1c901a"},{"text":"o ","color":"#1c8e1a"},{"text":"d","color":"#1b8c19"},{"text":"e","color":"#1a8a18"},{"text":"j","color":"#1a8717"},{"text":"e","color":"#198517"},{"text":"s ","color":"#188316"},{"text":"m","color":"#188115"},{"text":"u","color":"#177f15"},{"text":"n","color":"#167d14"},{"text":"i","color":"#167a13"},{"text":"c","color":"#157812"},{"text":"i","color":"#147612"},{"text":"o","color":"#147411"},{"text":"n ","color":"#137210"},{"text":"s","color":"#127010"},{"text":"o","color":"#126d0f"},{"text":"b","color":"#116b0e"},{"text":"r","color":"#10690d"},{"text":"a","color":"#10670d"},{"text":"n","color":"#0f650c"},{"text":"t","color":"#0e630b"},{"text":"e","color":"#0e610b"}]
tellraw @s [{"text":"","bold": false},{"text":"\u2757 ","color":"red","bold": true},{"text":"Objetos entregados de inmediato al aparecer: ","color":"gold"},{"text":"'","color":"#003e04"},{"text":"R","color":"#034706"},{"text":"i","color":"#065109"},{"text":"f","color":"#095a0c"},{"text":"l","color":"#0c640f"},{"text":"e ","color":"#0f6e12"},{"text":"d","color":"#127715"},{"text":"e ","color":"#168118"},{"text":"A","color":"#198a1b"},{"text":"s","color":"#1c941e"},{"text":"a","color":"#1f9e21"},{"text":"l","color":"#22a724"},{"text":"t","color":"#25b127"},{"text":"o","color":"#28ba2a"},{"text":"'","color":"#2cc42d"},{"text":", ","color":"#2fce30"},{"text":"'","color":"#32d733"},{"text":"E","color":"#35e136"},{"text":"s","color":"#38ea39"},{"text":"c","color":"#3bf43c"},{"text":"o","color":"green"},{"text":"p","color":"#3bf43b"},{"text":"e","color":"#38eb38"},{"text":"t","color":"#35e135"},{"text":"a","color":"#32d832"},{"text":"'","color":"#2fce2f"},{"text":", ","color":"#2cc52c"},{"text":"'","color":"#28bb28"},{"text":"L","color":"#25b225"},{"text":"a","color":"#22a822"},{"text":"n","color":"#1f9f1f"},{"text":"z","color":"#1c961c"},{"text":"a","color":"#198c19"},{"text":"m","color":"#168316"},{"text":"i","color":"#127912"},{"text":"s","color":"#0f700f"},{"text":"i","color":"#0c660c"},{"text":"l","color":"#095d09"},{"text":"e","color":"#065306"},{"text":"s","color":"#034a03"},{"text":"'","color":"#004100"}]
scoreboard players set @s Municion_Rifle 40
scoreboard players set @s Disparo-Escopeta 8
playsound entity.horse.armor master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 1
execute as @s[tag=!supervivencia-z] run fill 14 235 133 14 234 133 iron_bars
execute as @s[tag=!supervivencia-z] run playsound entity.zombie.attack_iron_door master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 0.7
execute as @s[tag=!supervivencia-z] run scoreboard players add @s Desactivando 1
execute as @s[tag=supervivencia-z,tag=!yamero-survival-z] run function kitpvp:cuerpo_del_juego/votos/survival-z/inicio/iniciando
execute as @s[tag=supervivencia-z,tag=!s-z-afavor] run function kitpvp:cuerpo_del_juego/votos/survival-z/inicio/s-z_a_favor