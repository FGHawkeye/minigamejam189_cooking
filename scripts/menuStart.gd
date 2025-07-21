extends Node2D

@onready var start: Button = $buttons/Start
@onready var how_play: Button = $"buttons/How Play"
@onready var click_menu: AudioStreamPlayer = $buttons/clickMenu
@onready var bottoms: AudioStreamPlayer = $buttons/bottoms

func _ready() -> void: #sonidos
	start.mouse_entered.connect(mouse_entered)
	how_play.mouse_entered.connect(mouse_entered)
	start.pressed.connect(bottom_click)
	how_play.pressed.connect(bottom_click)

func mouse_entered(): #sonido al pasar mouse
	bottoms.play()
	
func bottom_click(): #sonido click
	click_menu.play()
	
func _on_start_pressed() -> void:
	await get_tree().create_timer(0.2).timeout
	get_tree().change_scene_to_file("res://scenes/main.tscn")



func _on_how_play_pressed() -> void:
	await get_tree().create_timer(0.2).timeout
	get_tree().change_scene_to_file("res://scenes/how_play.tscn")
