extends Control

var score_count = 0


func _ready():
	GlobalSignal.connect("change_score" , self, "_change_score")
	GlobalSignal.connect("can_use" , self, "_can_use")
	GlobalSignal.connect("collected_key" , self, "_collected_key")
	GlobalSignal.connect("locked_door" , self, "_locked_door")
	

func _can_use(state):
	if state:
		$"%UseLabel".visible = true
	else:
		$"%UseLabel".visible = false



func _change_score():
	score_count =+ 1
	$ScoreLable.text = "Score :" +str(score_count)


