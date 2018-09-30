extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

onready var irisDropdown = $Panel/Panel2/VBoxContainer/IdentiteContainer/Grid/IrisContainer/Dropdown
onready var sexeDropdown = $Panel/Panel2/VBoxContainer/IdentiteContainer/Grid/SexeContainer/Dropdown

func _ready():
    # Called when the node is added to the scene for the first time.
    # Initialization here
    pass

func _process(delta):
#    # Called every frame. Delta is time since last frame.
#    # Update game logic here.
    pass

func _on_irisSelected(ID):
    print("Iris : ", irisDropdown.get_item_text(ID))

func _on_sexeSelected(ID):
    print("Sexe : ", sexeDropdown.get_item_text(ID))


### Setting visibility of the panels according to the inputs

# Emitted when user selects the good type
#    Set "IdentiteContainer" to visible
func _on_good_type_selected():
    $Panel/Panel2/VBoxContainer/IdentiteContainer.visible = true
    print("visible")

# Emitted when user selects the wrong type
#    Set "IdentiteContainer" to non-visible
func _on_wrong_type_selected():
    $Panel/Panel2/VBoxContainer/IdentiteContainer.visible = false
    $Panel/Panel3/InfosSujet/StatusImplantation.visible = false
    print("invisible")

func _on_IdentiteValidee():
    $Panel/Panel3/InfosSujet/StatusImplantation.visible = true
    $Panel/Panel2/VBoxContainer/DonneesContainer.visible = true


### Popup the code (when the "empreinte" is valid)

func _on_DonneesContainer_generate_code():
    $CodePopup.popup_centered()
