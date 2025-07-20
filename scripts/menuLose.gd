extends Control

func mostrarScoreFinal():
	var scoreManager = get_node("/root/main/scoreManager")
	$PanelContainer/VBoxContainer/score.text = "Score: " + str(scoreManager.scoreFinal)

@onready var restart: Button = $PanelContainer/VBoxContainer/restart
@onready var back: Button = $PanelContainer/VBoxContainer/back
@onready var click_menu: AudioStreamPlayer = $sounds/clickMenu
@onready var bottoms: AudioStreamPlayer = $sounds/bottoms

func _ready() -> void: #sonidos
	restart.mouse_entered.connect(mouse_entered)
	back.mouse_entered.connect(mouse_entered)
	restart.pressed.connect(bottom_click)
	back.pressed.connect(bottom_click)
	
	
func mouse_entered(): #sonido al pasar mouse
	bottoms.play()
	
func bottom_click():
	click_menu.play()

func _on_restart_pressed() -> void:
	await get_tree().create_timer(0.2).timeout
	get_tree().paused = false
	get_tree().reload_current_scene()

func _on_back_pressed() -> void:
	await get_tree().create_timer(0.2).timeout
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/menu_start.tscn")
	
