extends Node


var x = true



func _ready():
	$Sprite.self_modulate = Color($Red.value, $Green.value, $Blue.value)



func _on_Blue_value_changed(value):
	var dif = $Red.value + $Green.value + $Blue.value - 1
	if $Green.value - dif < 0:
		$Red.value -= dif - $Green.value
		$Green.value = 0
	else:
		$Green.value -= dif
	
	$Sprite.self_modulate = Color($Red.value, $Green.value, $Blue.value)



func _on_Green_value_changed(value):
	var dif = $Red.value + $Green.value + $Blue.value - 1
	if $Red.value - (dif/2) < 0:
		$Blue.value -= dif - $Red.value
		$Red.value = 0
	elif $Blue.value - (dif/2) < 0:
		$Red.value -= dif - $Blue.value
		$Blue.value = 0
	else:
		$Blue.value -= dif/2
		$Red.value -= dif/2
	
	$Sprite.self_modulate = Color($Red.value, $Green.value, $Blue.value)



func _on_Red_value_changed(value):
	var dif = $Red.value + $Green.value + $Blue.value - 1
	if $Green.value - dif < 0:
		$Blue.value -= dif - $Green.value
		$Green.value = 0
	else:
		$Green.value -= dif
	
	$Sprite.self_modulate = Color($Red.value, $Green.value, $Blue.value)
