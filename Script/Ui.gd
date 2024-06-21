extends Control

var score_count = 0



func _ready():
	GlobalSignal.connect("change_score" , self, "_change_score")
	GlobalSignal.connect("can_use" , self, "_can_use")
	GlobalSignal.connect("collected_key" , self, "_collected_key")
	GlobalSignal.connect("locked_door" , self, "_locked_door")
	
	$KeyLabel.text = "Keys: "+str(GlobalVars.key_count)
	
func _locked_door():
	$"%UseLabel".text = "LOCKED"
	$"%UseLabel".visible = true 
	

func _collected_key(count):
	GlobalVars.key_count += count
	$KeyLabel.text = "Key : "+str(GlobalVars.key_count)


func _can_use(state):
	if state:
		$"%UseLabel".text = "press e"
		$"%UseLabel".visible = true
	else:
		$"%UseLabel".visible = false



func _change_score():
	score_count =+ 1
	$ScoreLable.text = "Score :" +str(score_count)


