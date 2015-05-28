extends KinematicBody2D

# Constants and Variables
const MOVE_SPEED = 100
var velocity = Vector2()

																				
func _fixed_process(delta):
	
	# Check input !
	if (Input.is_action_pressed("ui_left")):
		move( Vector2(MOVE_SPEED*delta,0) )
	if (Input.is_action_pressed("ui_up")):
		move( Vector2(0,MOVE_SPEED*delta) )
	if (Input.is_action_pressed("ui_right")):
		move( Vector2(-MOVE_SPEED*delta,0) )
	if (Input.is_action_pressed("ui_down")):
		move( Vector2(0,-MOVE_SPEED*delta) )
	
	# Check Collision
	if (is_colliding()):
		print("COROLHO")
		
	pass


																				
func _ready():
	set_fixed_process(true)
	print(get_collider_shape())
	pass
