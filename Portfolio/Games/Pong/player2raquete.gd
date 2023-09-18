extends KinematicBody2D

export (int) var speed = 200

#var size = texture.get_size()


var velocity = Vector2()
var get_node = ""

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	velocity = velocity.normalized() * speed

func _process(delta):
	get_input()
	velocity = move_and_slide(velocity)
	
