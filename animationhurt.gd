
extends AnimationPlayer

# member variables here, example:
# var a=2
# var b="textvar"

func _fixed_process(delta):
	if (not self.is_playing()):
		get_node("/root/global").goto_scene("res://Scenes/Game1.scn")
	pass

func _ready():
	# Initialization here
	pass




func _on_Button_pressed():
	play("hurt")
	set_fixed_process(true)
	pass # replace with function body
