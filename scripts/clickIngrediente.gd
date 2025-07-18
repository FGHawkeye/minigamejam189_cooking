extends Area2D

func _input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		print("click")
		#TODO: Desaparecer y sumar a la suma total
