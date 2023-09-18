extends RigidBody2D

export var FLAP_FORCE = -100
onready var animation = $AnimationPlayer
var started = false

func _physics_process(delta):	
	start()
	flap()
	

func start():
	if started == false: return
	gravity_scale = 1
	if rotation_degrees >= 90:
		angular_velocity = 0
	else:
		angular_velocity = 1


func flap():
	if Input.is_action_just_pressed("flap"):
		animation.play("flap")
		started = true
		linear_velocity.y = FLAP_FORCE
		if rotation_degrees <= -30:
			angular_velocity = 0
		else:
			angular_velocity = FLAP_FORCE/2
