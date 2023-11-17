extends Node

export(int) var max_health = 1 setget set_max_health
var health = max_health setget set_health
var score = 0

signal no_health 
signal healh_changed(value)
signal max_health_changed(value)

func set_max_health(value):
	max_health = value
	self.health = min(health, max_health)
	emit_signal("max_health_changed", max_health)

func set_health(value):
	health = value
	emit_signal("healh_changed", health)
	if health <= 0:
		emit_signal("no_health")

func _ready():
	self.health = max_health


func _on_Stats_no_health():
	PlayerStats.score += 1 # Replace with function body.
