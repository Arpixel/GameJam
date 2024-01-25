extends Node2D

var GreenDoorColision = false
var GreenDoorKilitAcildi = false

var PurpleDoorColision = false
var PurpleDoorKilitAcildi = false

var YellowDoorColision = false
var YellowDoorKilitAcildi = false

# BAŞLANGIÇTA SIFIRLAMA

func _ready():
	
	
	$GreenDoor/GreenButton.disabled = true
	GreenDoorColision = false
	
	$PurpleDoor/PurpleButton.disabled = true
	PurpleDoorColision = false
	
	$YellowDoor/YellowButton.disabled = true
	YellowDoorColision = false

func _process(_delta):
	
	# Key İŞLEVLİLİK
	
	if Global.GreenKey == true:
		$GreenDoor/GreenButton.visible = true
		$GreenDoor/GreenButton.disabled = false
	
	if Global.PurpleKey == true:
		$PurpleDoor/PurpleButton.visible = true
		$PurpleDoor/PurpleButton.disabled = false
	
	if Global.YellowKey == true:
		$YellowDoor/YellowButton.visible = true
		$YellowDoor/YellowButton.disabled = false
	
	# IŞINLANMA
	if Input.is_action_just_pressed("E") and GreenDoorColision and GreenDoorKilitAcildi == true:
		Global.alarm_system = false
		get_tree().change_scene("res://Scenes/GreenRoom.tscn")
	
	if Input.is_action_just_pressed("E") and PurpleDoorColision and PurpleDoorKilitAcildi == true:
		Global.alarm_system = false
		get_tree().change_scene("res://Scenes/PurpleRoom.tscn")
	
	if Input.is_action_just_pressed("E") and YellowDoorColision and YellowDoorKilitAcildi == true:
		Global.alarm_system = false
		get_tree().change_scene("res://Scenes/YellowRoom.tscn")

# GREEN

func _on_GreenDoor_body_entered(body):
	if body.name == "Player":
		GreenDoorColision = true
	
		if GreenDoorKilitAcildi == false and Global.GreenKey == true:
			Global.player_text = "Click The Lock"
	
		elif Global.GreenKey == false:
			Global.player_text = "Find GreenKey"
		if GreenDoorKilitAcildi == true:
			Global.player_text = "Press E to enter"


func _on_GreenDoor_body_exited(body):
	if body.name == "Player":
		GreenDoorColision = false
		Global.player_text = ""

# PURPLE

func _on_PurpleDoor_body_entered(body):
	if body.name == "Player":
		PurpleDoorColision = true
		
		if PurpleDoorKilitAcildi == false and Global.PurpleKey == true:
			Global.player_text = "Click The Lock"
		
		elif Global.PurpleKey == false:
			Global.player_text = "Find PurpleKey"
		
		if PurpleDoorKilitAcildi == true:
			Global.player_text = "Press E to enter"

func _on_PurpleDoor_body_exited(body):
	if body.name == "Player":
		PurpleDoorColision = false
		Global.player_text = ""

# YELLOW

func _on_YellowDoor_body_entered(body):
	if body.name == "Player":
		YellowDoorColision = true
		
		if YellowDoorKilitAcildi == false and Global.YellowKey == true:
			Global.player_text = "Click The Lock"
		
		elif Global.YellowKey == false:
			Global.player_text = "Find YellowKey"
		
		if YellowDoorKilitAcildi == true:
			Global.player_text = "Press E to enter"

func _on_YellowDoor_body_exited(body):
	if body.name == "Player":
		YellowDoorColision = false
		Global.player_text = ""

# BUTON

func _on_GreenButton_pressed():
	GreenDoorKilitAcildi = true
	Global.player_text = "Press E to enter"

func _on_PurpleButton_pressed():
	PurpleDoorKilitAcildi = true
	Global.player_text = "Press E to enter"

func _on_YellowButton_pressed():
	YellowDoorKilitAcildi = true
	Global.player_text = "Press E to enter"

