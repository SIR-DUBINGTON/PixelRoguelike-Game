extends Node2D

const GrassEffect = preload("res://Effects/GrassEffect.tscn") # load the scene


func create_grass_effect():
	var grassEffect = GrassEffect.instance() # instance the scene 
	get_parent().add_child(grassEffect) #  get root scene/world & add scene
	grassEffect.global_position = global_position # set position
	
func _on_Hurtbox_area_entered(_area):
	create_grass_effect()
	queue_free()
