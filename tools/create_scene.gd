@tool
extends MainLoop

func _process(_delta: float) -> bool:
    # 1. Create the root node
    var root = Node.new()
    root.name = "EncounterLine"

    # 2. Pack the node tree into a Scene Resource
    var packed_scene = PackedScene.new()
    var result = packed_scene.pack(root)

    if result == OK:
        # 3. Save the packed scene to your project files
        var save_err = ResourceSaver.save(packed_scene, "res://addons/turn_tracker/encounter/encounter_line.tscn")
        if save_err == OK:
            print("Success: Scene created successfully!")
        else:
            print("Error: Failed to save scene file.")
    else:
        print("Error: Failed to pack nodes.")

    # Return true to terminate the MainLoop after one execution frame
    return true
