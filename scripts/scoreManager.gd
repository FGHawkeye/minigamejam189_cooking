extends Node

var scoreWin =0
var scoreTotal =0
var scoreFinal=0

func _ready():
	iniciar_nueva_ronda()
	
func iniciar_nueva_ronda ():  #Puntaje necesario
	scoreWin = int(randf_range(7, 15))
	$Label.text =  str(scoreWin)

func sumarPuntaje(valor):
	scoreTotal += valor
	print("Puntaje actual: ", scoreTotal)
	if scoreTotal == scoreWin:
		scoreFinal += 1
		scoreTotal = 0
		iniciar_nueva_ronda()
		print(scoreFinal)
		print("Win")
	elif scoreTotal > scoreWin:
		print("Lose")
		print(scoreFinal)
		get_tree().paused = true
		get_node("/root/main/menuLose").visible = true
		get_node("/root/main/menuLose").mostrarScoreFinal()

#func _on_some_event():
 #   var hud = get_node("/root/main/menuLose") # Cambia esta ruta según tu escena
  #  hud.mostrarScoreFinal(scoreFinal)  # Llamás la función con el valor que quieras mostrar
