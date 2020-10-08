fun fun09(a: int,b: int list)=
	if null b
	then []
	else a::hd(b)::fun09(a,tl(b));
