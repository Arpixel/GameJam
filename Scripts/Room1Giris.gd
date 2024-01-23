extends Area2D


func _on_Room1Giris_body_entered(body):
	if body.name == "Player":
		if Global.Turuncu_key == true:
			$Button.visible = true

func _on_Button_pressed():
	Global.Checkpoint()
	Global.Save_Game()
	get_tree().change_scene("res://Scenes/Room1YemekOda.tscn")

