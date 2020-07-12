extends Node

signal end_turn

signal hp_change
signal ap_change
signal mp_change

var max_hp = 25
var hp = max_hp setget set_hp

var max_ap = 3 
var ap = max_ap setget set_ap

var max_mp = 10
var mp = max_mp setget set_mp

func set_hp(value):
	hp = min(value, max_hp)
	emit_signal("hp_change", hp)
	
func set_ap(value):
	ap = min(value, max_ap)
	emit_signal("ap_change", ap)
	
func set_mp(value):
	mp = min(value, max_mp)
	emit_signal("mp_change", mp)
