extends Node2D

var Hucre_Kapisi_Aktif = true
onready var Hucre_Kapisi = $Hucre_Kapisi/Area2D

func _ready():
	Global.menu_engelle = false
	Global.Load_Game()
	Global.Posy -= 10
	Global.ReloadPosition()

func _process(_delta):
	if Input.is_action_just_pressed("E") and Hucre_Kapisi_Aktif == true:
		get_tree().change_scene("res://Scenes/Level3Devam.tscn")


func _on_Level3kapi_body_entered(body):
	if body.name == "Player":
		Hucre_Kapisi_Aktif = true
		Global.player_text = "Press E to enter"


func _on_Level3kapi_body_exited(body):
	if body.name == "Player":
		Hucre_Kapisi_Aktif = false
		Global.player_text = ""


