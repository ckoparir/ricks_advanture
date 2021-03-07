extends KinematicBody2D

var velocity = Vector2(0,0)
export var Speed = 180
const GRAVITY = 30
const JUMP_FORCE = -500

func _physics_process(delta):
	if Input.is_action_pressed("left"):
		velocity.x = -Speed
	if Input.is_action_pressed("right"):
		velocity.x = Speed
		
	velocity.y = velocity.y + GRAVITY
	
	if Input.is_action_pressed("jump"):
		velocity.y = JUMP_FORCE
		
	velocity = move_and_slide(velocity)	
	velocity.x = lerp(velocity.x,0,0.1)


