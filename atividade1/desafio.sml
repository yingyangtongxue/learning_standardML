
fun divisivel(x: int,y: int)=
	if((x mod y)=0)
	then true 
	else false;

fun bissexto(ano: int)=
	if( ((divisivel(ano,400))orelse(divisivel(ano,4)))andalso(not(divisivel(ano,100))) )
	then true
	else false;

fun positivo(num: int)=
	if(num>0) 
	then true
	else false;

fun positivo1(data: (int * int * int))=
	if ((positivo(#1 data))andalso(positivo(#2 data))andalso(positivo(#3 data))) 
	then true
	else false;

fun limite_meses(num: int)=
	if(num>12)
	then false
	else true;

(*
fun data_real(data: (int * int * int))=
	if( ( not (positivo1(#1 data,#2 data,#3 data)) )andalso( (limite_meses( (#2 data)) ) ) )
	then false
	else (
		if(not(bissexto(#3 data)))
		then (if(((#2 data)=1)orelse((#2 data)=3)
					orelse((#2 data)=5)
					orelse((#2 data)=7)
					orelse((#2 data)=8)
					orelse((#2 data)=10)
					orelse((#2 data)=12) )

				then ( if((#1 data)>31) then false else true)
				else (if((#2 data)=2)
						then if(#1 data)>28 then false else true 
						else (if((#1 data)>30) then false else true)
				)  
			 )
		else if(#1 data)>29 then false else true 
	);
*)
fun data_real(data: (int * int * int))=
	if( ( not (positivo1(#1 data,#2 data,#3 data)) ) )
	then false
	else (
		if( not( limite_meses((#2 data)) ) )
		then false
		else(
			if(not(bissexto(#3 data)))
			then (if(((#2 data)=1)orelse((#2 data)=3)
					orelse((#2 data)=5)
					orelse((#2 data)=7)
					orelse((#2 data)=8)
					orelse((#2 data)=10)
					orelse((#2 data)=12) )

				then ( if((#1 data)>31) then false else true)
				else (if((#2 data)=2)
						then if(#1 data)>28 then false else true 
						else (if((#1 data)>30) then false else true)
				)  
			 )
			else if(#1 data)>29 then false else true 
		)
	);
(*
fun data_real1(data: (int * int * int))=
	if(not(positivo1(#1 data,#2 data,#3 data))andalso(limite_meses((#2 data))))
	then false
	else (if(((#2 data)=1)orelse((#2 data)=3)
					orelse((#2 data)=5)
					orelse((#2 data)=7)
					orelse((#2 data)=8)
					orelse((#2 data)=10)
					orelse((#2 data)=12) )

			then ( if((#1 data)>31) then false else true)
			else (if(bissexto(#3 data)) 
					then if(((#2 data)=2)andalso((#1 data)<>29)) then false else true
					else if(((#2 data)=2)andalso((#1 data)<>28)) then false else true
			)
		  if((#1 data)>30) then false else true
	);

	*)