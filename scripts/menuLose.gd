extends Control

#@export var scoreManagerNode : Node

func mostraScoreFinal(score):
	$ScoreFinal.text = "Score Total: " + str(score)
#$ScoreFinal.text = "Score Total: " + str(scoreTotal)

func _on_restart_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()

func _on_back_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/menu_start.tscn")
	
