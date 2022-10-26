function SEventO_RegistryEvent(entity,type,event){
	var o = get(global.oEventBus,string(entity));
	map_replace(o.events,string(type),event);
	map_replace(global.oEventBus,string(entity),o);
}