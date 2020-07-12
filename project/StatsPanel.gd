extends Panel

onready var hp_label = $StatsContainer/HP
onready var ap_label = $StatsContainer/AP
onready var mp_label = $StatsContainer/MP

func _on_PlayerStats_hp_change(value):
	hp_label.text = "HP\n" + str(value)

func _on_PlayerStats_ap_change(value):
	ap_label.text = "AP\n" + str(value)

func _on_PlayerStats_mp_change(value):
	mp_label.text = "MP\n" + str(value)
