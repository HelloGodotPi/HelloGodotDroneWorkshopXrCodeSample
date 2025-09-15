extends Node

# Function to restart the current game
func restart_game():
	get_tree().reload_current_scene()

# Check for input in _process or _input
func _input(event):
	if event.is_action_pressed("restart_current_game"):  # Check for the input action
		restart_game()
