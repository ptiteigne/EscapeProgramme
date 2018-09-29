extends HBoxContainer

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

signal wrong_type_selected
signal good_type_selected


func _ready():
    # Called when the node is added to the scene for the first time.
    # Initialization here
    pass

#func _process(delta):
#    # Called every frame. Delta is time since last frame.
#    # Update game logic here.
#    pass

func _on_BatracienCheck_toggled(button_pressed):
    $MammiCheck.pressed = false
    
    if($HumainCheck.pressed):
        emit_signal("wrong_type_selected")
        $HumainCheck.pressed = false

func _on_MammiCheck_toggled(button_pressed):
    $BatracienCheck.pressed = false
    
    if($HumainCheck.pressed):
        emit_signal("wrong_type_selected")
        $HumainCheck.pressed = false


func _on_HumainCheck_toggled(button_pressed):
    $BatracienCheck.pressed = false
    $MammiCheck.pressed = false
    
    if(button_pressed == true):
        emit_signal("good_type_selected")
    else:
        emit_signal("wrong_type_selected")
