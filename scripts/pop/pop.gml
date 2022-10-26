function pop(ids,pos){
	var io;
	if(ds_exists(ids,ds_type_map)){
		io = ds_map_find_value(ids,pos);
		del(ids,pos);
	}else if(ds_exists(ids,ds_type_list)){
		io = ds_map_find_value(ids,pos);
		del(ids,pos);
	}
	return io;
}