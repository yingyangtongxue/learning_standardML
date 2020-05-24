(* contain some errors *)
(*errors are commented *)

val x = 34

val y =  x + 1 (* y = x + 1 *)

val z = if y > 0  then false else x < 4 (* val z = if y then 34 else x *)

val q = if y > 0 then 0 else 42 (* val q = if y>0 then 0   antes *) 

val a = ~5 (* val a = -5 *)

val w = 0 (*val w=0 error division by zero *)

val funny = 34 (* val fun =34   fun palavra reservada *)

val c = x div (w+1) (* val c=x/w this operator is used by real numbers (float)*)
