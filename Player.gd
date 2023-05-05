extends KinematicBody2D
#set camera to center around player
#fix enemy movement

var movespeed=500;
var bulletspeed=1000;
var bullet=preload("res://Bullet.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	var motion=Vector2()
	
	if Input.is_action_pressed("up"):
		motion.y-=1;
	if Input.is_action_pressed("down"):
		motion.y+=1;
	if Input.is_action_pressed("left"):
		motion.x-=1;
	if Input.is_action_pressed("right"):
		motion.x+=1;
	motion=motion.normalized()
	motion=move_and_slide(motion*movespeed)
	look_at(get_global_mouse_position())
	
	if(Input.is_action_just_pressed("LMB")):
		fire()
	var e1 = weakref($"../Enemy")
	var e2 = weakref($"../Enemy2")
	var e3 = weakref($"../Enemy3")
	var e4 = weakref($"../Enemy4")
	var e5 = weakref($"../Enemy11")
	var e6 = weakref($"../Enemy13")
	var e7 = weakref($"../Enemy14")
	var e8 = weakref($"../Enemy15")
	if (!e1.get_ref()&&!e2.get_ref()&&!e3.get_ref()&&!e4.get_ref()&&!e5.get_ref()&&!e6.get_ref()&&!e7.get_ref()&&!e8.get_ref()):
		print("QwQ")
		get_tree().get_root().get_node("world/Win").show()
		var t = Timer.new()
	
		t.set_wait_time(30)
		t.set_one_shot(true)
		self.add_child(t)
		t.start()
		yield(t, "timeout")
	
		get_tree().reload_current_scene()
		get_tree().get_root().get_node("world/Win").hide()
	
	
func fire():
	var bullet_in=bullet.instance()
	bullet_in.position=get_global_position()
	bullet_in.rotation_degrees= rotation_degrees
	bullet_in.apply_impulse(Vector2(),Vector2(bulletspeed,0).rotated(rotation))
	get_tree().get_root().call_deferred("add_child",bullet_in)
	
func kill():
	print("QwQ")
	get_tree().get_root().get_node("world/End").show()
	var t = Timer.new()
	
	t.set_wait_time(30)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	yield(t, "timeout")
	
	get_tree().reload_current_scene()
	get_tree().get_root().get_node("world/End").hide()
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	if "Enemy" in body.name:
		kill() # Replace with function body.
