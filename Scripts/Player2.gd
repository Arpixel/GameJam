extends KinematicBody2D


var velocity = Vector2()
var speed = 120
var gravity = 12
var jump_strength = -270
var dir = 0

onready var player = $"."


func _ready():
	
	global_position.y = -10
	Global.Player = self
	

func _process(_delta):
	Global.Player_Heath += 0.01
	
	$ProgressBar.value = Global.Player_Heath
	
	if Global.Player_Heath <= 0:
		get_tree().change_scene("res://Scenes/Level3.tscn")
		Global.Player_Heath =+ 100
	
	
	if Input.is_action_pressed("D"):
		dir = 1
	else:
		dir = 0
	if Input.is_action_pressed("A"):
		dir = -1
	
	if Input.is_action_pressed("ui_select") and is_on_floor():
		velocity.y = jump_strength
	
	elif Global.Player_Crouch == true:
		player.visible = false
		dir = 0
	
	velocity.x = speed * dir
	velocity.y += gravity
	velocity = move_and_slide(velocity, Vector2.UP)
	UpdateAnimation()
	
	$ActionText.text = Global.player_text

func UpdateAnimation():
	if is_on_floor():
		if dir == 1:
			$AnimatedSprite.flip_h = false
			$AnimatedSprite.play("Walk")
		if dir == 0:
			$AnimatedSprite.play("default")
		if dir == -1:
			$AnimatedSprite.flip_h = true
			$AnimatedSprite.play("Walk")
	if Input.is_action_pressed("ui_select"):
		$AnimatedSprite.play("Jump")
