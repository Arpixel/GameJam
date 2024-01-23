extends StaticBody2D


onready var raycast_01 = $"Sprite 00/RayCast2D 01"
onready var raycast_00 = $"Sprite 00/RayCast2D 00"

onready var anim_player = $AnimationPlayer


func _process(_delta):
	if Global.alarm_system == false:
		if raycast_01.is_colliding() or raycast_00.is_colliding():
			anim_player.play("AlarmOnAnim")
			Global.alarm_system = true
