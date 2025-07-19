extends Node
func _ready():
	var numIngr
	numIngr = int(randf_range(1,9))
	$LabelIngr.text = str(numIngr)
