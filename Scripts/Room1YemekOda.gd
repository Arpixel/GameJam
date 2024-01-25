extends Node2D

func _ready():
	Global.Load_Game()
	Global.Posy -= 10
	Global.ReloadPosition()

