extends CharacterBody2D

var SLASH = (preload("res://Scenes/slash.tscn"))

func _process(delta):
	look_at(get_global_mouse_position())

func shoot():
	var slash = SLASH.instantiate()
	get_parent().add_child(slash)
	slash.position = $Marker2D.global_position
	slash.rotation = $Marker2D.global_rotation - 80
	slash.velocity = get_global_mouse_position() - slash.position

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
	
	if Input.is_action_just_pressed("shoot"):
		shoot()
	
	move_and_slide()
