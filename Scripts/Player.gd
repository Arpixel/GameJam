extends KinematicBody2D


var velocity = Vector2()
var speed = 150
var gravity = 12
var jump_strength = -250
var dir = 0



func _process(delta):
	if Input.is_action_pressed("D"):
		dir = 1
	else:
		dir = 0
	if Input.is_action_pressed("A"):
		dir = -1
	if Input.is_action_pressed("ui_select") and is_on_floor():
		velocity.y = jump_strength
	
	velocity.x = speed * dir
	velocity.y += gravity
	move_and_slide(velocity, Vector2.UP)
	UpdateAnimation()


func UpdateAnimation():
	if dir == 1:
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("Walk")
	if dir == 0:
		$AnimatedSprite.play("default")
	if dir == -1:
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.play("Walk")


