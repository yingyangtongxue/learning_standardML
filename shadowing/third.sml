(* example to demonstrate how to shadowing works *)

val a = 10
(* static environment: a --> int *)
(* dynamic environment: a --> 10 *)

val b = a * 2
(* static environment: a -->int, b --> int *)
(* dynamic environment: a -->10, b --> 20 *)

val a = 5 (*It isn't a variable assignment *)  (*happened Shadowing *)
(* static environment: a -->int, b --> int *)
(* dynamic environment: a -->5, b --> 20 *)

val c = b 
(* static environment: a -->int, b --> int, c --> int *)
(* dynamic environment: a -->5, b --> 20, c --> 20 *)

val d = a
(* static environment: a -->int, b -->int, c -->int , d -->int *)
(* dynamic environment: a -->5, b --> 20, c -->20, d -->5 *)

val a = a + 1
(* static environment: a -->int, b -->int, c -->int , d -->int *)
(* dynamic environment: a -->6, b --> 20, c -->20, d -->5 *)

(* val g = f -3     error: f hasn't defined in environment *)

val f = a + 2
(* static environment: a -->int, b -->int, c -->int , d -->int, f -->int *)
(* dynamic environment: a -->6, b --> 20, c -->20, d -->5, f -->12 *)



