extends Control

@onready var music_player = $HBoxContainer/BGM

func _ready():
	if not music_player.playing:
		music_player.play()

func _on_start_game_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/node_2d.tscn")

func _on_exit_button_pressed():
	get_tree().quit()
