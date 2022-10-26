global.oEventObj = undefined;

SEventI_Init();
SEventO_Init();

ins_create(10, 80, Object_III4);
ins_create(10, 100, Object_III4);
ins_create(10, 120, Object_III4);

for(var i = 0;i < 100;i++){
	oo[i] = ins_create(30, irandom(1060), Object_III);
	SEventO_NewEntity(oo[i]);
	SEventO_RegistryEvent(oo[i],"e",function(){SEventO_This().x++;});
}

SEventO_NewEntity(Object_III4);
SEventO_RegistryEvent(Object_III4,"e",function(){SEventO_This().x++;});

alarm[0] = 1;
//print(Object_SEvent_Mannager);
//print(id);

//var i = SEvent_NewEventBag();
//i[SE.STEP] = function(){x++;};
