extends VBoxContainer

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

signal identiteValidee

signal irisSelected(ID)
signal sexeSelected(ID)

onready var champNom = $Grid/NomContainer/Edit
var sexeSelected = ""
var irisSelected = ""
onready var champPrenom = $Grid/PrenomContainer/Edit
onready var champAge = $Grid/AgeContainer/Edit
onready var champTaille = $Grid/TailleContainer/Edit



### Obtention des résultats des menus (par signaux)

func _on_IrisDropdown_item_selected(ID):
    emit_signal("irisSelected", ID)
    irisSelected = $Grid/IrisContainer/Dropdown.get_item_text(ID)

func _on_SexeDropdown_item_selected(ID):
    emit_signal("sexeSelected", ID)
    sexeSelected = $Grid/SexeContainer/Dropdown.get_item_text(ID)


func _make_fields_non_editable():
    champNom.editable = false
    champPrenom.editable = false
    champAge.editable = false
    champTaille.editable = false
    $Grid/SexeContainer/Dropdown.disabled = true
    $Grid/IrisContainer/Dropdown.disabled = true

### Validation des inputs

func _on_Validation():
    
    if (champNom.get_text().to_upper() == "GEULIN" 
    &&  champPrenom.get_text().to_upper() == "ANSELME"
    &&  champAge.get_text().to_upper() == "21"
    &&  champTaille.get_text().to_upper() == "185"
    &&  sexeSelected.to_upper() == "HOMME"
    &&  irisSelected.to_upper() == "MARRON"):
        emit_signal("identiteValidee")
        _make_fields_non_editable()
