extends Node2D


onready var light = $Light2D
onready var anim = $AnimationPlayer
var LightIsOn = true


func _start():
	anim.play("Normal")


func _process(_delta):
	if Global.alarm_system == true and LightIsOn == true:
		anim.play("Alarm")


func _on_Button_button_up():
	if Global.alarm_system == true:
		pass
	elif Global.alarm_system == false:
		if LightIsOn == true:
			anim.play("Off")
			LightIsOn = false
		elif LightIsOn == false:
			anim.play("On")
			LightIsOn = true
