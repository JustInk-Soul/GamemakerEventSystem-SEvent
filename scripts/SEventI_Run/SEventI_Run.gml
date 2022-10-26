function SEventI_Run(SEtype){
	var eventType = string(SEtype);
	//if(eventType != SE.INIT){
		//print("----------------------------");
		//print(len(global.iEventBus[BUS.ENTITY]));
		//print(len(global.iEventBus[BUS.TYPE]));
		//print(len(global.iEventBus[BUS.EVENT]));
		//print("----------------------------");
		for(var i = 0;i < len(global.iEventBus[BUS.TYPE]);i++){
			if(get(global.iEventBus[BUS.TYPE],i) == eventType){
				var o = get(global.iEventBus[BUS.ENTITY],i);
				if(instance_exists(o)){
					o.__tmp__ = get(global.iEventBus[BUS.EVENT],i);
					with(o){
						__tmp__();
						variable_struct_remove(self,"__tmp__");
					}
				}
			}
		}
	//}else{
	//	for(var i = 0;i < len(global.iEventBus[BUS.TYPE]);i++){
	//		if(get(global.iEventBus[BUS.TYPE],i) == eventType){
	//			var o = get(global.iEventBus[BUS.ENTITY],i);
	//			if(instance_exists(o)){
	//				o.__tmp__ = get(global.iEventBus[BUS.EVENT],i);
	//				with(o){
	//					__tmp__();
	//				}
	//			}
	//		}
	//		del(global.iEventBus[BUS.TYPE],i);
	//		del(global.iEventBus[BUS.ENTITY],i);
	//		del(global.iEventBus[BUS.EVENT],i);
	//	}
	//}
	//if(eventType != SE.INIT){
	//	for(var i = 0;i < len(global.iEventBus[eventType]);i++){
	//		print(i);
	//		var entity = get(global.iEventBus[eventType],i);
	//		//if(entity!=undefined){
	//			if(instance_exists(entity.entity)){
	//				with(entity.entity){
	//					entity.event();
	//				}
	//			}
	//		//}
	//	}
	//}else{
	//	for(var i = 0;i < len(global.iEventBus[eventType]);i++){
	//		var entity = get(global.iEventBus[eventType],i);
	//		//if(entity!=undefined){
	//			if(instance_exists(entity.entity)){
	//				with(entity.entity){
	//					entity.event();
	//				}
	//			}
	//		//}
	//		del(global.iEventBus[eventType],i);
	//	}
	//}
}