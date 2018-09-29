extends OptionButton

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
    # Called when the node is added to the scene for the first time.
    # Initialization here
    self.add_separator()
    self.add_item("Bleu")
    self.add_item("Hétérochromie")
    self.add_item("Marron")
    self.add_item("Vert")

#func _process(delta):
#    # Called every frame. Delta is time since last frame.
#    # Update game logic here.
#    pass
