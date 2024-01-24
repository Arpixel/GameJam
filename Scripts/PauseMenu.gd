extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$CanvasLayer.visible = false

func _process(_delta):
	if Global.menu_engelle == true:
		$CanvasLayer.visible = false
	elif Global.menukapa == false:
		$CanvasLayer.visible = true
		get_tree().paused = true
	elif Global.menukapa == true:
		$CanvasLayer.visible = false
		get_tree().paused = false
	
	if Input.is_action_just_pressed("Pause") and Global.menu_engelle == false:
		Global.menukapa = false

func _on_SaveGame_pressed():
	Global.Checkpoint()
	Global.Save_Game()


func _on_LoadGame_pressed():
	Global.Load_Game()

func _on_MainMenu_pressed():
	get_tree().change_scene("res://Scenes/Main_Menu.tscn")
	Global.menu_engelle = true

func _on_Resume_pressed():
	Global.menukapa = true
