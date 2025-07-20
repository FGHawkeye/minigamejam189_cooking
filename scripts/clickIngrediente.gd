extends Area2D
var numIngr = 0


func _ready():
	numIngr = int(randf_range(1,9))
	$LabelIngr.text = str(numIngr)

func _input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		print("click")
		print("Valor del ingrediente:", numIngr)
		get_node("/root/main/scoreManager").sumarPuntaje(int(numIngr))
		_mouse_exit()
		get_parent().queue_free()

func setFrameFood(dictionary: Dictionary):
	get_parent().set_frame(dictionary[str(numIngr)])

func _mouse_enter():
	get_parent().scale = Vector2(1.3, 1.3)

func _mouse_exit():
	get_parent().scale = Vector2(1.1, 1.1)
