function SEventI_RegistryEvent(type,entity,func){
	list_add(global.iEventBus[BUS.ENTITY], entity);
	list_add(global.iEventBus[BUS.TYPE], string(type));
	list_add(global.iEventBus[BUS.EVENT], func);
}