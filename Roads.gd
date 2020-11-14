extends Position2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var time = 0
var map_position = Vector2(0,0)
func draw_circle_custom(radius, maxerror = 0.25):

	if radius <= 0.0:
		return

	var maxpoints = 1024 # I think this is renderer limit

	var numpoints = ceil(PI / acos(1.0 - maxerror / radius))
	numpoints = clamp(numpoints, 3, maxpoints)

	var points = PoolVector2Array([])

	for i in numpoints:
		var phi = i * PI * 2.0 / numpoints
		var v = Vector2(sin(phi), cos(phi))
		points.push_back(v * radius)

	draw_colored_polygon(points, Color(1.0, 1.0, 1.0))

func _draw():
	draw_circle_custom(10)


# Called when the node enters the scene tree for the first time.
func _ready():
	global_position=Vector2(0,0) # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time = get_parent().time_left
	update()
