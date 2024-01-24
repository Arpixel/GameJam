extends ColorRect


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(_delta):
	if Input.is_action_just_pressed("Pause"):
		var new_pause_state = not get_tree().paused
		get_tree().paused = new_pause_state
		visible = new_pause_state
		



func _on_Save_Button_pressed():
	Global.Save_Game()


func _on_Load_Button_pressed():
	Global.Load_Game()


func _on_Quit_pressed():
	get_tree().change_scene("res://Scenes/level0.tscn")
	get_tree().quit()
