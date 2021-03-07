extends KinematicBody2D

var velocity = Vector2(0,0)
export var Speed = 150

func _physics_process(delta):
	if Input.is_action_pressed("left"):
		velocity.x = -Speed
	if Input.is_action_pressed("right"):	
		velocity.x = Speed
	
	velocity.y = 300
	move_and_slide(velocity)	
	velocity.x = lerp(velocity.x,0,0.15)


