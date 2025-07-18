extends Node

@export var spawnPoints: Array[Marker2D] = []
var foodScene = preload("res://scenes/ingrediente.tscn")

func _ready() -> void:
	getAllNodes(self)
	spawnFood()

func spawnFood():
	for marker in spawnPoints:
		var object = foodScene.instantiate()
		call_deferred("add_child",object)
		object.global_position = marker.global_position
		

func getAllNodes(node):
	for N in node.get_children():
		if N.get_child_count() > 0:
			print("["+N.get_name()+"]")
			getAllNodes(N)
		else:
			spawnPoints.append(N)
