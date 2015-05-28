extends Area2D

# member variables here, example:
# var a=2
# var b="textvar"

export var motion = Vector2()
export var cycle = 1.0
var accum=0.0

var vel = Vector2()

func _fixed_process(delta):
	set_pos(get_pos()+vel*delta)
	if (get_pos().y > 312):
		vel *= -1
	elif (get_pos().y < 190):
		vel *= -1
	pass

func _ready():
	# Initalization here
	vel = Vector2(0,-300)
	set_fixed_process(true)
	pass
