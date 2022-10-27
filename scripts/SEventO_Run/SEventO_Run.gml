function SEventO_Run(obj, event){
	var o = get(global.oEventBus,string(obj));
	var oe = get(o.events,string(event));
	var oi = o.obj;
	oi.__tmp__ = oe;
	global.oEventObj = oi;
	oi.__tmp__();
	with(o){
		variable_struct_remove(self,"__tmp__");
	}
}
