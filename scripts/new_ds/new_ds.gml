function new_ds(DS_TYPE){
	switch(DS_TYPE){
		case ds_type_map:
			return ds_map_create();
		case ds_type_list:
			return ds_list_create();
	}
}