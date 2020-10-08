fun fun10(a: int,b: int list)=
	let
		val c=0
		val n=0
	in
		let fun fun16(c: int,d: int list,n: int)=
			let val e=c+(hd d)
			in if e>=a
				then (e,n+1)
				else fun16(e,tl  d,n+1)
				end	
		in
			 fun16(c,b,n)
		end
	end
