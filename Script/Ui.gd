extends Control

var score_count = 0


func _ready():
	GlobalSignal.connect("change_score" , self, "_change_score")





func _change_score():
	score_count =+ 1
	$Label3D.text = "Score :" +str(score_count)

