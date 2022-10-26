function SEventO_NewEntity(inst){
	var im = new_ds(ds_type_map);
	var i = {obj:inst,events:im}
	map_add(global.oEventBus,string(inst),i);
	return i;
}