extends Node2D

@onready var spriteReady = $Ready
@onready var spriteGo = $Go
@export var sprites: NodePath
@export var timer: NodePath
@export var generador: NodePath
@export var scoreManager: NodePath

func _ready():
	await get_tree().create_timer(1.2).timeout
	spriteReady.visible = false
	spriteGo.visible = true
	await get_tree().create_timer(1).timeout
	spriteGo.visible = false
	init()
	
func init():
	var spritesNode = get_node(sprites)
	for child in spritesNode.get_children():
		child.visible = true
		
	get_node(generador).spawnFood()
	get_node(scoreManager).obtenerScoreParaGanar()
	var timerNode = get_node(timer)
	timerNode.visible = true
	timerNode.get_child(0).start()
	get_node("/root/main/music").play()
