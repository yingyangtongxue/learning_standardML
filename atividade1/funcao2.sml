
fun max(pair: int*int):int =
	if(#1 pair) < (#2 pair) then (#2 pair) else (#1 pair);

val a=2;
val b=4;

max(a,b);
