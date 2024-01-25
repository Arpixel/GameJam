extends Node2D

# Colisionlar Kapılara yaklaşınca true olur
# Üç colision için üç değişken

var GreenDoorColision = false

var PurpleDoorColision = false

var YellowDoorColision = false

func _on_GreenDoor_body_entered(body):
	if body.name == "Player":
		
		GreenDoorColision = true
		
		if Global.GreenKey == true:
			Global.player_text = "Press E to enter"
		
		elif Global.GreenKey == false:
			Global.player_text = "Find GreenKey"

func _on_GreenDoor_body_exited(body):
	if body.name == "Player":
		GreenDoorColision = false
		
		Global.player_text = ""

# READY

func _ready():
	Global.menu_engelle = false

func _process(_delta):
	
	# GREEN
	
	if Input.is_action_just_pressed("E") and GreenDoorColision and Global.GreenKey == true:
		get_tree().change_scene("res://Scenes/GreenRoom.tscn")
	
	# YELLOW
	
	#DOLDURULMADI
	
	# PURPLE
	
	#DOLDURULMADI
