extends CharacterBody2D

var speed = 250
#var vel = Vector2(0 , 0)

func _physics_process(delta):
	var collision_info = move_and_collide((velocity.normalized()) * delta * speed)

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
	print("ded") # Replace with function body.


