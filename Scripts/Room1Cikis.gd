extends Area2D

func _on_Room1Cikis_body_entered(body):
	if body.name == "Player":
		$Button.visible = true

func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/Level0.tscn")
