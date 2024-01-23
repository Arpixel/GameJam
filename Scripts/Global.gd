extends Node2D

var Turuncu_key = false
var keycard = false

var alarm_system = false
var Posx = 0
var Posy = 0
var Player = null
var Player_Heath = 100






func Save_Game():
	var save_file = File.new()#Dosya oluşturduk
	save_file.open("user://save_file.save",File.WRITE)#Dosyaya yazdırdık
	var data = {
	 "Posx":Posx,
	 "Posy":Posy,
	 "Turuncu_key":Turuncu_key,
	 "Player_Heath": Player_Heath,
	 "keycard":keycard,
	}
	save_file.store_var(data)
	save_file.close()#dosyayı kapattık
	
func Load_Game():
	var save_file = File.new()#yeni dosya açtık
	if !save_file.file_exists("user://save_file.save"):#eğer kayıt dosyası yoksa geri döndürdük
		return
	save_file.open("user://save_file.save",File.READ)#kayıt dosyasını okuttuk
	var data = save_file.get_var()
	Posx = data["Posx"]
	Posy = data["Posy"]
	Turuncu_key = data["Turuncu_key"]
	Player_Heath = data["Player_Heath"]
	keycard = data["keycard"]
	save_file.close()#dosyayı kapattık
