extends Area2D

# member variables here, example:
# var a=2
# var b="textvar"

var taken = false
func _ready():
	get_node("anim").play("spin")

func _on_body_enter( body ):
	print("PORRA1")
	if (not taken):
		get_node("anim").play("taken")
		
		if get_node("../Robo").is_hidden():
			get_node("../Robo").show()
		else:
			get_node("../Robo").hide()
