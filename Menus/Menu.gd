extends Control




func _ready():
	$VBoxContainer/startButton.grab_focus()




func _on_startButton_pressed():
	get_tree().change_scene("res://World.tscn")
	



func _on_optionsButton_pressed():
	var options = load("res://Options.tscn").instance()
	get_tree().current_scene.add_child(options)



func _on_quitButton_pressed():
	get_tree().quit()
