extends Timer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print(get_path()) # Replace with function body.

	#get_node("Travelling Circle").time = 1-get_time_left()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(1-get_time_left())
