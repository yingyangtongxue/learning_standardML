fun fun06(x: int, y: int, z: int)=
	if x=y andalso y=z (* andalso x=z *) 
	then 0
	else if y>z andalso z>x
		then 2
		else if y>x andalso z>y
			then 3
			else 1
