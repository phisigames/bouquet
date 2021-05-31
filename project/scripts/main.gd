extends Control

export(Array, String) var time_levels
export(Array, String) var chill_levels

func _ready():
	$AnimationPlayer.play("GO_UIMENU")

func _on_TBPlay_pressed():
	$AnimationPlayer.play("GO_UIPLAYMODE")

func _on_TBTutorial_pressed():
	$AnimationPlayer.play("GO_UITUTORIAL")

func _on_TBQuit_pressed():
	get_tree().quit()

func _on_BtnMenu_pressed():
	$AnimationPlayer.play("GO_UIMENU")

func _on_TBTime_pressed():
	$AnimationPlayer.play("GO_UITIMEMODE")

func _on_TBChill_pressed():
		$AnimationPlayer.play("GO_UICHILLMODE")

func _on_TBLevel_pressed(index):
	get_tree().change_scene(time_levels[index])

func _on_TBCPlay_pressed(index):
	get_tree().change_scene(chill_levels[index])