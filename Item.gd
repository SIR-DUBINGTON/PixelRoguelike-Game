extends Node2D



func _ready():
	if randi() % 2 == 0:
		$TextureRect.texture = load("res://UI/bag_coins.png")
	else:
		$TextureRect.texture = load("res://UI/Beer.png")
