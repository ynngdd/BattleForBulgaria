extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var playername
var playerpos
var playerrole
var playerdest
var from

var circle = "Bulgaria/Travel timer/Travelling Circle"
var current_pos = ''
var from_pos = ''
var to_pos = ''

# Called when the node enters the scene tree for the first time.
func _ready():
	playername = 'Qsko'
	playerpos = 'Plovdiv'
	playerdest = ''
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print('Position: '+playerpos)
	print('Destination : '+playerdest)
	print(current_pos)
	if playerpos!="Travelling":
		current_pos = "Bulgaria/Travel timer/Cities/"+playerpos+"/"+playerpos+"Position"
		get_node(circle).position=get_node(current_pos).global_position
	if playerpos=="Travelling":
		to_pos = "Bulgaria/Travel timer/Cities/"+playerdest+"/"+playerdest+"Position"
		from_pos = "Bulgaria/Travel timer/Cities/"+from+"/"+from+"Position"
		get_node(circle).position=get_node(from_pos).global_position.linear_interpolate(get_node(to_pos).global_position,1-get_node("Bulgaria/Travel timer").time_left)
func _on_Travel_timer_timeout():
	playerpos=playerdest
	playerdest=''
