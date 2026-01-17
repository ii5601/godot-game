extends Control

@onready var health_bar = $CanvasLayer/HBoxContainer/TextureProgressBar
@onready var health_label = $CanvasLayer/HBoxContainer/Label

func update_ui():
	var player = get_tree().get_nodes_in_group("player")[0]
	health_bar.value = player.health
	health_label.text = str(player.health)

func _ready():
	var player = get_tree().get_nodes_in_group("player")[0]
	update_ui()
	player.stats_changed.connect(update_ui)
