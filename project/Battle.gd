extends Node

onready var enemy = $Enemy

func _on_SwordButton_pressed():
	print("Attack!")
	enemy.hp -= 4
	

