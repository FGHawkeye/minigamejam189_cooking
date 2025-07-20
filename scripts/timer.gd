extends Node2D
@onready var timer = get_node("Timer")
@onready var pb = get_node("TextureProgressBar")


func _process(delta):
	pb.value = timer.time_left * 10
	if timer.time_left == 0:
		get_tree().paused = true
		get_node("/root/main/menuLose").visible = true
		get_node("/root/main/menuLose").mostrarScoreFinal()
