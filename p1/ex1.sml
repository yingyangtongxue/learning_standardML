val c = 12

fun func01(a: int)=
	let
		val b = a-1
		val a = b-1
		val b = a-1
	in
		c-b
	end

val c=10

val resp = func01(c)
