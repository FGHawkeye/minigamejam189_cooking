extends Control

func mostrarScoreFinal():
	var scoreManager = get_node("/root/main/scoreIngredientes")
	$PanelContainer/VBoxContainer/score.text = "Score: " + str(scoreManager.scoreFinal)

func _on_restart_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()

func _on_back_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/menu_start.tscn")
	
