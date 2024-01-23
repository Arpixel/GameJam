
extends Area2D


	
func _on_Room1Giris_body_entered(body):
	pass

func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/level0.tscn")
