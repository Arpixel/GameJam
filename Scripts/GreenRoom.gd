extends Node2D

func _ready():
	$PurpleKey.monitoring = false
	$PurpleKey.visible = false

func _on_PurpleKeyVisibleButton_pressed():
	$PurpleKey.visible = true
	$PurpleKey.monitorable = true
