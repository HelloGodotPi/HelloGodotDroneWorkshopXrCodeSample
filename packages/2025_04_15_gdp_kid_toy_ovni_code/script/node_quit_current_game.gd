extends Node

# Function to quit the game
func quit_game():
	get_tree().quit()

# Check for input in _input
func _input(event):
	if event.is_action_pressed("quit_game"):  # Check for the input action
		quit_game()
