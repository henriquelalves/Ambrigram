
extends KinematicBody2D

# Constants and Variables
const MOVE_SPEED = 100

var initialpos = Vector2()
var initialposRobo = Vector2()

var velocity = Vector2()
var robo = null

																				
func moveJogador(velocidade):
	move(velocidade)
	robo.move(-1*velocidade)

func _ready():
	set_fixed_process(true)
	print(get_collider_shape())
	robo = get_node("../Robo")
	initialpos = get_pos()
	initialposRobo = robo.get_pos()
	
	
func _fixed_process(delta):
	
	# Check input !
	if (Input.is_action_pressed("ui_left")):
		moveJogador( Vector2(-MOVE_SPEED*delta,0) )
	if (Input.is_action_pressed("ui_up")):
		moveJogador( Vector2(0,-MOVE_SPEED*delta) )
	if (Input.is_action_pressed("ui_right")):
		moveJogador( Vector2(MOVE_SPEED*delta,0) )
	if (Input.is_action_pressed("ui_down")):
		moveJogador( Vector2(0,MOVE_SPEED*delta) )




func _on_StaticBody2D_2_body_enter( body ):
	print("meupaudeoculos")
	get_node("/root/global").goto_scene("res://Scenes/Game2.scn")
	pass # replace with function body
