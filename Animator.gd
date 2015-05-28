
extends AnimationPlayer

# member variables here, example:
# var a=2
# var b="textvar"

func _fixed_process(delta):
	if (not self.is_playing()):
		get_node("/root/global").goto_scene("res://Scenes/Menu.scn")
	pass

func _ready():
	play("intro")
	set_fixed_process(true)
	pass
