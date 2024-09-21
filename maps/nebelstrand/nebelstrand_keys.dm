/obj/item/key/nebelstrand
	name = "Nebelstrand key"
	material = /decl/material/solid/metal/copper

/obj/item/key/nebelstrand/house_1
	name = "house key"
	key_data = "house 1"

/obj/item/key/nebelstrand/house_1/Initialize(mapload, material_key, _data)
	. = ..(mapload, material_key, _data)
	if (!_data)
		key_data = "house 1"

/obj/item/key/nebelstrand/house_2
	name = "house key"
	key_data = "house 2"

/obj/item/key/nebelstrand/house_2/Initialize(mapload, material_key, _data)
	. = ..(mapload, material_key, _data)
	if (!_data)
		key_data = "house 2"

/obj/item/key/nebelstrand/house_3
	name = "house key"
	key_data = "house 3"

/obj/item/key/nebelstrand/house_3/Initialize(mapload, material_key, _data)
	. = ..(mapload, material_key, _data)
	if (!_data)
		key_data = "house 3"

/obj/item/key/nebelstrand/house_4
	name = "house key"
	key_data = "house 4"

/obj/item/key/nebelstrand/house_4/Initialize(mapload, material_key, _data)
	. = ..(mapload, material_key, _data)
	if (!_data)
		key_data = "house 4"

/obj/item/key/nebelstrand/house_5
	name = "house key"
	key_data = "house 5"

/obj/item/key/nebelstrand/house_5/Initialize(mapload, material_key, _data)
	. = ..(mapload, material_key, _data)
	if (!_data)
		key_data = "house 5"

/obj/item/key/nebelstrand/house_6
	name = "house key"
	key_data = "fogbound"

/obj/item/key/nebelstrand/house_6/Initialize(mapload, material_key, _data)
	. = ..(mapload, material_key, _data)
	if (!_data)
		key_data = "fogbound"
