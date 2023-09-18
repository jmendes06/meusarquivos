extends KinematicBody2D

export (int) var speed = 200

var rgn = RandomNumberGenerator.new()
var direction = 0
var game_start =0
var velocity
var colisao
var token

func _ready():
	rgn.randomize()
	direction = rgn.randi_range(-1,1)
	print(direction)
	while direction == 0:
		direction = rgn.randi_range(-1,1)	
	#direction = -1
	velocity = Vector2(direction,0)
	var points1 = 0
	var points2 = 0
	game_start = 1
	#onready var player1 = get_parent().get_node("KinematicBody2D5")
	#onready var player2 = get_parent().get_node("KinematicBody2D4")

func reset():
	pass

func _physics_process(delta):
	while(game_start == 0):
		token = 0
	velocity = velocity.normalized() * speed
	
	colisao = move_and_collide(velocity*delta*direction)
	if colisao != null:
		direction = direction*(-1)
	
