extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


var Player = "/root/Main/Player"
var timer = "/root/Main/Player/Bulgaria/Travel timer"

func _on_Burgas_pressed():
	if get_node(Player).playerpos == "Plovdiv" or get_node(Player).playerpos == 'Varna':
		get_node(Player).from = get_node(Player).playerpos
		get_node(Player).playerpos = 'Travelling'
		get_node(Player).playerdest = 'Burgas'
		get_node(timer).start(-1)
