extends KinematicBody2D


var Aktif = false
var velocity = Vector2()
var dir = 0
var speed = 80
var Gravity = 15
var Attack = false


func _process(_delta):
	
	GardianAI()
	_UpdateAnim()
	
	if Global.Player_Crouch == true:
		Global.alarm_system = false
	if Global.alarm_system == true:
		speed = 90
	else:
		speed = 80

func GardianAI():
	if Aktif == true and Attack == false and Global.Player_Crouch == false or Global.alarm_system == true and Global.Player_Crouch == false:
		if Global.Player.global_position.x > position.x:
			dir = 1
		else:
			dir = 0
		if Global.Player.global_position.x < position.x:
			dir = -1

		velocity.x = speed *dir
		velocity.y += Gravity
		velocity = move_and_slide(velocity, Vector2.UP)
	
	else:
		dir = 0


func _on_Alan_body_entered(body):
	if body.name == "Player":
		Aktif = true


func _on_Alan_body_exited(body):
	if body.name == "Player":
		Aktif = false
		dir = 0


func _UpdateAnim():
	if Attack == false:
		if dir == 1 :
			$AnimatedSprite.flip_h = false
			$AnimatedSprite.play("Walk")
		if dir == 0:
			$AnimatedSprite.play("Idle")
		if dir == -1 :
			$AnimatedSprite.flip_h = true
			$AnimatedSprite.play("Walk")
	else:
		$AnimatedSprite.play("Attack")


func _on_Attack_body_entered(body):
	if body.name == "Player" and Global.Player_Crouch == false:
		Attack = true
		Global.Player_Heath -= 10
		$AttackTimer.start()
	elif body.name == "Player" and Global.Player_Crouch == true:
		Attack = false
	



func _on_AttackTimer_timeout():
	if Attack == true:
		Global.Player_Heath -= 10
		$AttackTimer.start()


func _on_Attack_body_exited(body):
	if body.name == "Player":
		Attack = false
