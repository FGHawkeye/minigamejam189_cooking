extends Button

@onready var start: Button = $Button
@onready var sprites: Node = $Sprites
@onready var timer: Timer = $timerManager/Timer
@onready var generador: Node = $generadorIngredientes
@onready var scoreManager: Node = $scoreManager

func _on_start_pressed() -> void:
	await get_tree().create_timer(1).timeout
	for child in sprites.get_children():
		child.visible = true
	generador.spawnFood()
	scoreManager.obtenerScoreParaGanar()
	timer.start()
	
