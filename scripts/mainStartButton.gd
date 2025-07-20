extends Button

@export var sprites: NodePath
@export var timer: NodePath
@export var generador: NodePath
@export var scoreManager: NodePath

func _on_pressed() -> void:
	await get_tree().create_timer(0.2).timeout
	var spritesNode = get_node(sprites)
	for child in spritesNode.get_children():
		child.visible = true
		
	get_node(generador).spawnFood()
	get_node(scoreManager).obtenerScoreParaGanar()
	var timerNode = get_node(timer)
	timerNode.visible = true
	timerNode.get_child(0).start()
	self.visible = false
