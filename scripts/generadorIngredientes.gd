extends Node

@export var spawnPoints: Array[Marker2D] = []
var foodScene = preload("res://scenes/ingrediente.tscn")
var foodSpriteDictionary = {"1":0, "2":1, "3":2, "4":3, "5":4, "6":5, "7":6, "8":7, "9":8}

func _ready():
	getAllNodes(self)
	spawnFood()

func spawnFood():
	for marker in spawnPoints:
		var object = foodScene.instantiate()
		call_deferred("add_child",object)
		object.global_position = marker.global_position
		object.get_child(0).call_deferred("setFrameFood", foodSpriteDictionary)

func getAllNodes(node):
	for N in node.get_children():
		if N.get_child_count() > 0:
			print("["+N.get_name()+"]")
			getAllNodes(N)
		else:
			spawnPoints.append(N)
