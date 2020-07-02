extends Node

onready var hp_label = $Enemy/HPLabel

func _on_SwordButton_pressed():
	print("Attack!")
	hp_label.text = "15hp"

