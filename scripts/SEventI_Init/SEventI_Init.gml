function SEventI_Init(){
	//global.iEventBus[BUS.ENTITY] = new_ds(ds_type_list);
	//global.iEventBus[BUS.EVENT] = new_ds(ds_type_list);
	global.iEventBus[BUS.ENTITY] = new_ds(ds_type_list);
	global.iEventBus[BUS.EVENT] = new_ds(ds_type_list);
	global.iEventBus[BUS.TYPE] = new_ds(ds_type_list);
	//for(var i = 0;i < len(global.iEventBus);i++){
	//	ds_list_clear(global.iEventBus[i]);
	//}
}