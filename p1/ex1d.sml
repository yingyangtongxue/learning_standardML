fun fun04(x: int,y: int)=
	if x>0
	then 10
	else
		let
			val x=2
			val q=3
		in
			if (x+y)>10
			then (x+y+q)
			else 
				let val y=15 in x+y end
		end
