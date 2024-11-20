extends Sprite2D

var frames = [
	[load("res://assets/nick0.png"),
	load("res://assets/nick1.png"),
	load("res://assets/nick2.png"),
	load("res://assets/nick3.png"),
	load("res://assets/nick0_blind.png"),
	load("res://assets/nick1_blind.png")]
]
var frameindex = [0,0];

func showsprite(c: int, i: int) -> void:
	set_texture(frames[c][i]);
	frameindex=[c,i];
	
func getchar(): return frameindex[0];
func getdialog(): return frameindex[1];

func _process(_delta: float) -> void:
	if (Input.is_action_just_released("interact")):
		showsprite(getchar(),(getdialog()+1)%frames[getchar()].size());
