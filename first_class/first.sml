(* My first program - comment *)

val x = 34; (* binding = apenas associar o conteúdo à variavel *)
(*primeiro binding define ambiente dinâmico -> x=34 *)
(*ambiente estático: x->int *)

val y = 17; (* o programa em sml é apenas uma sequência de bindings *)
(*estende o ambiente dinâmico: x->34, y->17*)
(*ambiente estático: y->int *)

val z = (x+y) + (y+2);
(*ambiente dinâmico: x->34, y->17, z->(34+17)+(17+2)=70 (faz avaliação, atribuí valores) *)
(*ambiente estático: x->int, y->int, z->int (utilizado para checagem de tipos e armazena tipos confirmados) *)


(*só executa se os tipos forem os mesmos, estiverem corretos *)
(*após checagem de tipos, inicia-se o ambiente estático *)

val q = z+1;

val abs_of_z = if z<0 then 0-z else z;
(*ambiente estático: x->int, y->int, ..., abs_of_z->int *)
(*ambiente dinâmico: x->34,...,abs_of_z->70 *)
(*se a setença for verdadeira, ignora-se o do meio e vai para o fim *)
