extends Node

var score = 0
@onready var score_text: Label = $"../labels/score_text"


func add_point():
	score+=1
	score_text.text="You collected " + str(score) + " coins"
	print(score)
