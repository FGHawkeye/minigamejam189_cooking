extends Node
#SCORE MANAGER SE RESPONSABILIZA DE LA CONDICION DE VICTORIA POR PUNTOS Y PERDIDA POR PUNTOS
#ADEMAS DE REINICIAR LA RONDA ENTERA AL GANAR

@onready var timerManagerNode = get_node("/root/main/timerManager")
@onready var menuLoseNode = get_node("/root/main/menuLose")
@onready var generadorIngredientesNode = get_node("/root/main/generadorIngredientes")
@onready var cut: AudioStreamPlayer = $cut

var scoreWin =0
var scoreTotal =0
var scoreFinal=0
	

func obtenerScoreParaGanar ():
	scoreWin = int(randf_range(7, 15))
	$Label.text =  str(scoreWin)

func sumarPuntaje(valor):
	cut.play()
	scoreTotal += valor
	print("Puntaje actual: ", scoreTotal)
	if scoreTotal == scoreWin:
		scoreFinal += 1
		scoreTotal = 0
		iniciarNuevaRonda()
		print(scoreFinal)
		print("Win")
	elif scoreTotal > scoreWin:
		print("Lose")
		print(scoreFinal)
		get_tree().paused = true
		menuLoseNode.visible = true
		
		menuLoseNode.mostrarScoreFinal()

func iniciarNuevaRonda():
	timerManagerNode.get_child(0).start()
	generadorIngredientesNode.resetAllFood()
	obtenerScoreParaGanar()
