extends Node

onready var enemy = $Enemy
onready var sword_button = $UI/SwordButton

func _on_SwordButton_pressed():
	print("Attack!")
	if enemy != null:
		enemy.hp -= 4
	
func _on_Enemy_died():
	enemy = null
	sword_button.hide()
	pass # Replace with function body.
