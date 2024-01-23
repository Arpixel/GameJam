extends Area2D


func _on_Room1Giris_body_entered(body):
	if body.name == "Player":
		pass
		if Global.key == true:
			$Button.visible = true

func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/Room1YemekOda.tscn")


func _on_Room1Giris_body_exited(body: Node) -> void:
	if body.name == "Player":
		$Sprite2.visible = false
