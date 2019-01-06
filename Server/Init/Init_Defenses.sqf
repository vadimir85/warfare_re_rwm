/* Structures */
['WFBE_NEURODEF_BARRACKS_WALLS',[
	['Land_HBarrier_Big_F',[8,0,0],90],
	['Land_HBarrier_Big_F',[8,10,0],90],
	['Land_HBarrier_Big_F',[8,-7.5,0],90],
	['Land_HBarrier_Big_F',[5,-11,0],180],
	['Land_HBarrier_Big_F',[0.5,-11,0],180],
	['Land_HBarrier_Big_F',[-6,-11,0],180],
	['Land_HBarrier_Big_F',[-9.5,-7.5,0],90],
	['Land_HBarrier_Big_F',[-9.5,2.5,0],90],
	['Land_HBarrier_Big_F',[5,13,0],180],
	['Land_HBarrier_Big_F',[0.5,13,0],180],
	['Land_HBarrier_Big_F',[-6,13,0],180],
	['Land_HBarrier_Big_F',[-9.5,9.5,0],90]
],true] Call SetNamespace;

['WFBE_NEURODEF_LIGHT_WALLS',[
	['Land_HBarrier_Big_F',[10,-1,0],90],
	['Land_HBarrier_Big_F',[10,9,0],-90],
	['Land_HBarrier_Big_F',[10,-8.5,0],90],
	['Land_HBarrier_Big_F',[7,-12,0],180],
	['Land_HBarrier_Big_F',[0,-12,0],180],
	['Land_HBarrier_Big_F',[-7,-12,0],180],
	['Land_HBarrier_Big_F',[7,12,0],180],
	['Land_HBarrier_Big_F',[0,12,0],180],
	['Land_HBarrier_Big_F',[-7,12,0],180],
	['Land_HBarrier_Big_F',[-11,-9,0],90],
	['Land_HBarrier_Big_F',[-11,-1.5,0],90],
	['Land_HBarrier_Big_F',[-11,6,0],90],
	['Land_HBarrier_Big_F',[-11,9,0],90]
],true] Call SetNamespace;

['WFBE_NEURODEF_COMMANDCENTER_WALLS',[
	['Land_HBarrier_Big_F',[4,-3.5,0],90],
	['Land_HBarrier_Big_F',[4,4,0],90],
	['Land_HBarrier_Big_F',[1,7.5,0],180],
	['Land_HBarrier_Big_F',[-2.5,7.5,0],180],
	['Land_HBarrier_Big_F',[-5.5,4,0],90],
	['Land_HBarrier_Big_F',[-5.5,-3.5,0],90],
	['Land_HBarrier_5_F',[4,-6.5,0],180]
],true] Call SetNamespace;

['WFBE_NEURODEF_SERVICEPOINT_WALLS',[
	['Land_HBarrier_Big_F',[4,-3.5,0],90],
	['Land_HBarrier_Big_F',[4,4,0],90],
	['Land_HBarrier_Big_F',[1,7.5,0],180],
	['Land_HBarrier_Big_F',[-2.5,7.5,0],180],
	['Land_HBarrier_Big_F',[-5.5,4,0],90],
	['Land_HBarrier_Big_F',[-5.5,-3.5,0],90],
	['Land_HBarrier_5_F',[4,-6.5,0],180]
],true] Call SetNamespace;

['WFBE_NEURODEF_HEAVY_WALLS',[
	['Land_HBarrier_Big_F',[14,-1,0],90],
	['Land_HBarrier_Big_F',[14,9,0],-90],
	['Land_HBarrier_Big_F',[14,-8.5,0],90],
	['Land_HBarrier_Big_F',[14,-11,0],90],
	['Land_HBarrier_Big_F',[11,-14.5,0],180],
	['Land_HBarrier_Big_F',[4.5,-14.5,0],180],
	['Land_HBarrier_Big_F',[-3,-14.5,0],180],
	['Land_HBarrier_Big_F',[-10.5,-14.5,0],180],
	['Land_HBarrier_Big_F',[-14,-11,0],90],
	['Land_HBarrier_Big_F',[-14,-3.5,0],90],
	['Land_HBarrier_Big_F',[-14,4,0],90],
	['Land_HBarrier_Big_F',[-14,9.5,0],90],
	['Land_HBarrier_Big_F',[11,13,0],180],
	['Land_HBarrier_Big_F',[3.5,13,0],180],
	['Land_HBarrier_Big_F',[-4,13,0],180],
	['Land_HBarrier_Big_F',[-11,13,0],-180]
],true] Call SetNamespace;

['WFBE_NEURODEF_AIRCRAFT_WALLS',[
	['Land_HBarrier_Big_F',[10,-1,0],90],
	['Land_HBarrier_Big_F',[10,9,0],-90],
	['Land_HBarrier_Big_F',[10,-8.5,0],90],
	['Land_HBarrier_Big_F',[7,-12,0],180],
	['Land_HBarrier_Big_F',[0,-12,0],180],
	['Land_HBarrier_Big_F',[-7,-12,0],180],
	['Land_HBarrier_Big_F',[7,12,0],180],
	['Land_HBarrier_Big_F',[0,12,0],180],
	['Land_HBarrier_Big_F',[-7,12,0],180],
	['Land_HBarrier_Big_F',[-11,-9,0],90],
	['Land_HBarrier_Big_F',[-11,-1.5,0],90],
	['Land_HBarrier_Big_F',[-11,6,0],90],
	['Land_HBarrier_Big_F',[-11,9,0],90]
],true] Call SetNamespace;

['WFBE_NEURODEF_MG',[
	[if (WF_A2_Vanilla) then {'Land_Bunker_01_small_F'} else {'Land_BagBunker_Small_F'},[0.25,0,0],180],
	['Land_BagFence_Corner_F',[-1,-3,0],0]
],true] Call SetNamespace;

['WFBE_NEURODEF_AAPOD',[
	['Land_BagFence_Round_F',[0,2,0],0],
	['Land_BagFence_Long_F',[-2.8,-1.7,0],90],
	['Land_BagFence_Long_F',[2.8,-1.7,0],90],
	['Land_BagFence_Long_F',[1.4,-5.5,0],0],
	['Land_BagFence_Corner_F',[-1.8,-5,0],0]
],true] Call SetNamespace;

['WFBE_NEURODEF_MASH',[
	['Land_BagFence_Corner_F',[-3,3,0],270],
	['Land_BagFence_Long_F',[-3.5,-0.2,0],90],
	['Land_BagFence_Corner_F',[-2.5,-3.5,0],0],
	['Land_BagFence_Long_F',[0.5,-4,0],0],
	['Land_BagFence_Corner_F',[3.5,-3,0],90],
	['Land_BagFence_Long_F',[4,-0.2,0],90],
	['Land_BagFence_Corner_F',[3,3.5,0],180]
],true] Call SetNamespace;