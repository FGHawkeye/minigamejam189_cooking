extends Node
func _ready():
	var numAl
	numAl = int(randf_range(7, 15))
	$Label.text = "Puntaje necesario: " + str(numAl)
