extends CharacterBody2D

#var slash(slash)
var slash_Scene = preload("res://Scenes/slash.tscn")

func _process(delta):
	look_at(get_global_mouse_position())

func _physics_process(delta):
	
	if Input.is_action_pressed("up"):
		velocity.y = -200
	if Input.is_action_pressed("down"):
		velocity.y = 200
	if Input.is_action_pressed("left"):
		velocity.x = -200
	if Input.is_action_pressed("right"):
		velocity.x = 200

	if Input.is_action_just_released("up"):
		velocity = Vector2.ZERO
	if Input.is_action_just_released("down"):
		velocity = Vector2.ZERO
	if Input.is_action_just_released("left"):
		velocity = Vector2.ZERO
	if Input.is_action_just_released("right"):
		velocity = Vector2.ZERO			
	
	move_and_slide()
