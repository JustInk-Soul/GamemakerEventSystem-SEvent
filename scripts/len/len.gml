function len(val){
	//print(val);
	try{
		if(ds_exists(val,ds_type_list)){
			return ds_list_size(val);
		}else if(ds_exists(val,ds_type_map)){
			return ds_map_size(val);
		}
	}catch(error){
		switch(typeof(val)){
			case "string":
				return string_width(val);
			case "array":
				return array_length(val);
			default:
				return;
		}
	}
}