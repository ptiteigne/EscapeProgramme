extends VBoxContainer

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

signal generate_code

func _ready():
    # Called when the node is added to the scene for the first time.
    # Initialization here
    pass

#func _process(delta):
#    # Called every frame. Delta is time since last frame.
#    # Update game logic here.
#    pass


func _on_GenererButton_up():
    if ($MarginContainer2/GridContainer/Empreinte/EmpreinteEdit.text == "3"):
        emit_signal("generate_code")
