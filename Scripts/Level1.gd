extends Node2D

func _ready():
	Global.Load_Game()
	Global.Posy -= 10
	Global.Posx = 0
	Global.ReloadPosition()
