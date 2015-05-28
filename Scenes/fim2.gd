
extends Area2D

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Initialization here
	pass


func _on_body_enter( body ):
	print("ENTROU!")
	get_node("/root/global").goto_scene("res://Scenes/Game3.scn")
	pass # replace with function body
