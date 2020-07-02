extends Node2D

var hp = 25 setget set_hp

onready var hp_label = $HPLabel

func set_hp(value):
	hp = value
	hp_label.text = str(hp) + "hp"


