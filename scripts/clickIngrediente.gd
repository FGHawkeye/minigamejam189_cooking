extends Area2D

@onready var cut: AudioStreamPlayer = $cut

var numIngr = 0

func _ready():
	numIngr = int(randf_range(1,9))
	$LabelIngr.text = str(numIngr)

func _input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		cut.play()
		await get_tree().create_timer(0.1).timeout
		print("click")
		print("Valor del ingrediente:", numIngr)
		get_child(3).emitting = true
		get_node("/root/main/scoreManager").sumarPuntaje(int(numIngr))
		_mouse_exit()
		get_parent().queue_free()

func setFrameFood(dictionary: Dictionary):
	get_parent().set_frame(dictionary[str(numIngr)])

func _mouse_enter():
	get_parent().scale = Vector2(1.3, 1.3)

func _mouse_exit():
	get_parent().scale = Vector2(1.1, 1.1)
