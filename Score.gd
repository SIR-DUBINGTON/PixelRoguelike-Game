extends Label


func _process(delta):
	self.text = str(PlayerStats.score)
	
