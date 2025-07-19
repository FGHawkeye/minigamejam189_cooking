extends Node
var scoreWin =0
var scoreTotal =0
func _ready():  #Puntaje necesario
	scoreWin = int(randf_range(7, 15))
	$Label.text =  str(scoreWin)
func sumarPuntaje(valor):
	scoreTotal += valor
	print("Puntaje actual: ", scoreTotal)
	if scoreTotal == scoreWin:
		print("Win")
	if scoreTotal > scoreWin:
		get_tree().paused = true
		get_node("/root/main/menuLose").visible = true
		
	
