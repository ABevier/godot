extends Node2D

signal died

var hp = 25 setget set_hp

onready var hp_label = $HPLabel
onready var animation_player = $AnimationPlayer

func set_hp(value):
	hp = value
	hp_label.text = str(hp) + "hp"
	
	if hp <= 0:
		emit_signal("died")
		queue_free()
	else:
		animation_player.play("Shake")
		yield (animation_player, "animation_finished")
		animation_player.play("Attack")
		
		yield (animation_player, "animation_finished")
		var battle = get_tree().current_scene
		var player = battle.find_node("PlayerStats")
		player.hp -= 3


