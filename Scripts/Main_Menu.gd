extends Control


onready var toilet = $Objects/Toilet/Sprite
onready var character = $Objects/Character


func _ready():
	Global.menu_engelle = true
	toilet.play("Idle")
	character.play("Idle")


func _on_Button_pressed():
	Global.menu_engelle = false
	Global.menukapa = true
	get_tree().change_scene("res://Scenes/Hucre.tscn")


func _on_Button2_pressed():
	get_tree().quit()


func _on_Button3_pressed():
	Global.Posx = 0
	Global.Posy = -10
	Global.Save_Game()
	get_tree().change_scene("res://Scenes/Hucre.tscn")


func _on_Button_button_up():
	toilet.play("Flush")
