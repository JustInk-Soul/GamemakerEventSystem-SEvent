function get(ids,pos){
	if(ds_exists(ids,ds_type_map)){
		return ds_map_find_value(ids,pos);
	}else if(ds_exists(ids,ds_type_list)){
		return ds_list_find_value(ids,pos);
	}
}