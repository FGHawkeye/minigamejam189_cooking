extends Node
func _ready():
	var numIngr
	numIngr = int(randf_range(1,9))
	$LabelIngr.text = str(numIngr)
	print("Valor del ingrediente:", numIngr)
	get_node(".../root/scoreManager").sumar_puntaje(numIngr)
