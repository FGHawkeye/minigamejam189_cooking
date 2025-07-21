extends Node2D

@onready var bottoms: AudioStreamPlayer = $bottoms
@onready var click_menu: AudioStreamPlayer = $clickMenu
@onready var back_menu: Button = $backMenu

func _ready():
	back_menu.mouse_entered.connect(_on_mouse_entered)
	back_menu.pressed.connect(bottom_click)

func _on_mouse_entered():
	bottoms.play() 
	#button.pressed.connect(bottom_click)
	
func bottom_click():
	click_menu.play()

func _on_back_menu_pressed() -> void:
	await get_tree().create_timer(0.2).timeout
	get_tree().change_scene_to_file("res://scenes/menu_start.tscn")
