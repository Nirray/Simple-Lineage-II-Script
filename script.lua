var potion, item, Shot: TL2Item;
buff: TL2Buff;
MP: Cardinal;
function buffCheck: Boolean;
begin
    
    if (not User.Buffs.ByID(1363, buff) or (buff.endtime<300000)) then begin //1363 wich buff id checking
        Result:=true;
        Engine.MoveTo(189567, 56446, -7294);
		  Delay(10000);
		  Engine.UseItem(20389);
        Delay(30000);
		  Engine.SetTarget('Beryl');
			Engine.DlgOpen;
			Delay(500);
			Engine.BypassToServer('npc_268498780_Chat index'); // View the list of available Magical Support.
			Delay(500);
			Engine.BypassToServer('npc_268498780_getAutoBuffs Mage Player Resistances.htm'); // Fighter buffs
			Delay(500);
			// resistances
			Engine.BypassToServer('npc_268498780_getbuffs 1362 1 Resistances.htm'); // 
			Delay(500);
			Engine.BypassToServer('npc_268498780_getbuffs 1461 1 Resistances.htm');
			Delay(500);
			Engine.BypassToServer('npc_268498780_getbuffs 1259 4 Resistances.htm');
			Delay(500);
			Engine.BypassToServer('npc_268498780_getbuffs 1035 4 Resistances.htm');
			Delay(500);
			Engine.BypassToServer('npc_268498780_getbuffs 1363 1 Resistances.htm'); // Chant of Victory
			Delay(500);
			Engine.BypassToServer('npc_268498780_Chat Songs'); // Songs
			Delay(500);
			Engine.BypassToServer('npc_268498780_getbuffs 363 1 Songs.htm'); // Songs
			Delay(500);
			Engine.BypassToServer('npc_268498780_getbuffs 363 1 Songs.htm'); // Medi
			Delay(500);
			Engine.BypassToServer('npc_268498780_getbuffs 349 1 Songs.htm'); // Renewal
			Delay(500);
			Engine.BypassToServer('npc_268498780_getbuffs 364 1 Songs.htm'); // Champion
			Delay(600);
			//Warp into GR
			Delay(1000);
			Engine.SetTarget('Ilyana');
			Engine.DlgOpen;
			Delay(500);
			Engine.BypassToServer('npc_268483573_Chat 5');
			Delay(500);
			Engine.BypassToServer('npc_268483573_goto 14555');
			Delay(10000);
			Engine.MoveTo(187179, 56292, -7240);
			Delay(600);
    end;
Result:=false;
end;


function BuyShot:boolean;
begin
if not Inventory.User.ByID(3952, Shot) or (Shot.count<100) then begin
result:=true;
        Engine.UseItem(20389);
        Delay(30000);
        Engine.MoveTo(43793, -47873, -796);
        Delay(6000);
        Engine.MoveTo(44852, -47876, -796);
        Delay(6000);
        Engine.SetTarget('Vladimir');
        Engine.DlgOpen;
        Delay(1000);
        Engine.BypassToServer('npc_268483556_Chat 99');
        Delay(1000);
        Engine.BypassToServer('npc_268483556_multisell 14200');
        Delay(1000);
        Engine.NpcExchange(3952, 4000);
        delay(1000);
        Engine.MoveTo(44852, -47876, -796);
        Delay(4000);
        Engine.MoveTo(43793, -47873, -796);
        //Warp into GR
			Delay(1000);
			Engine.SetTarget('Ilyana');
			Engine.DlgOpen;
			Delay(500);
			Engine.BypassToServer('npc_268483573_Chat 5');
			Delay(500);
			Engine.BypassToServer('npc_268483573_goto 14555');
			Delay(10000);
			Engine.MoveTo(187179, 56292, -7240);
			Delay(600);
        end;
        result:=false;
end;

function Nirray:boolean;
begin
if not Inventory.User.ByID(726, potion) or (potion.count<100) then begin
result:=true;
        Delay(1000);
        Engine.UseItem(20389);
        Delay(30000);
        Engine.MoveTo(43793, -47873, -796);
        Delay(6000);
        Engine.MoveTo(44852, -47876, -796);
        Delay(6000);
        Engine.SetTarget('Weber');
        Engine.DlgOpen;
        Delay(1000);
        Engine.BypassToServer('npc_268483560_multisell 14036');
        Delay(1000);
        Engine.NpcExchange(726, 2000);
        delay(1000);
        Engine.MoveTo(44852, -47876, -796);
        Delay(4000);
        Engine.MoveTo(43793, -47873, -796);
        //Warp into GR
			Delay(1000);
			Engine.SetTarget('Ilyana');
			Engine.DlgOpen;
			Delay(500);
			Engine.BypassToServer('npc_268483573_Chat 5');
			Delay(500);
			Engine.BypassToServer('npc_268483573_goto 14555');
			Delay(10000);
			Engine.MoveTo(187179, 56292, -7240);
			Delay(600);
        end;
        result:=false;
end;
function deadCheck: Boolean;
begin
Result := false;
    if User.Dead then begin
        Result := true;
        Print('Dead. Pressing to village.');
        Delay(1000);
        Engine.FaceControl(0,false);
        Engine.GoHome;
        Delay(10000);
    end;
end;

begin
while true do begin
delay(100);

                    //town coordinates     range                 //buff id wich check                        //shot id                              //mp id
    if User.Buffs.ByID(1363, buffCheck) and Inventory.User.ByID(3952, BuyShot) and inventory.user.byid(726, Nirray) then begin
        
    end;                      
                             
    
end;
end.
