function del(ids,pos){
	if(ds_exists(ids,ds_type_map)){
		ds_map_delete(ids,pos);
	}else if(ds_exists(ids,ds_type_list)){
		ds_list_delete(ids,pos);
	}
}