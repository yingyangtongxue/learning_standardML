(* Definição do datatype que vocês vão usar para essa lista *)
datatype json =
         Num of real (* real é como a SML chamada números em ponto flutuante *)
       | String of string
       | False
       | True
       | Null
       | Array of json list
       | Object of (string * json) list

(* alguns exemplos de valores do tipo json *)
val json_pi    = Num 3.14159
val json_hello = String "hello"
val json_false = False
val json_array = Array [Num 1.0, String "world", Null]
val json_obj   = Object [("foo", json_pi), ("bar", json_array), ("ok", True)]

(* algumas linhas de código que usam a biblioteca padrão e/ou algumas coisas 
	que ainda não aprendemos *)


(* dedup : string list -> string list -- faz remoção de duplicações *)
fun dedup xs = ListMergeSort.uniqueSort String.compare xs

(* strcmp : string * string -> compara strings em ordem alfabética
   onde a ordem do datatype é = LESS | EQUAL | GREATER *)
val strcmp = String.compare                                        
                        
(* converte um int para um real *)
val int_to_real = Real.fromInt

(* valor absoluto de um real *)
val real_abs = Real.abs

(* converte um real para uma string *)
val real_to_string = Real.toString

(* returna true se um real é negativo : real -> bool *)
val real_is_negative = Real.signBit


(**** Coloque sua soluções para os exercícios 1-8 AQUI ****)
(*Daniel Nunes Monteiro - Linguagem de Programação - Lista 3*)
(*Exercício 1*)
fun criar_lista u =
    if (u = 0)
    then []
    else (Object[("n",Num(int_to_real u)),("b",True)])::criar_lista (u-1)

fun criar_json u =
    Array (criar_lista u)

(*Exercício 2*)
fun assoc (k, xs) =
  case xs of 
      [] => NONE
    | (k', v) :: xs' => if k' = k then SOME v else assoc (k, xs')    

(*Exercício 3*)
fun dot (j, f) =
  case j of 
     Object xs => assoc (f, xs)
    | _ => NONE

(*Exercício 4*)
fun um_atributo j =
  case j of 
     Object xs => let
      fun auxiliar (xs, acc) =
        case xs of 
          [] => acc
          | (s, _) :: xs' => auxiliar(xs', s::acc)
     in
      auxiliar (xs, [])
     end
    | _ => []


(*Exercício 5*)
fun sem_repeticao sl = length(sl) = length(dedup sl)

(*Exercício 6*)
fun sem_atributos_repetidos_recursivos j =
  let
    fun aux1 xs =
      case xs of 
        [] => true
        | j :: xs' => sem_atributos_repetidos_recursivos j andalso aux1 xs'
    fun aux2 xs =
      case xs of
        [] => true
        | (_, j) :: xs' => sem_atributos_repetidos_recursivos j andalso aux2 xs'
  in
    case j of 
      Array xs => aux1 xs
      | Object xs => sem_repeticao(um_atributo (Object xs)) andalso aux2 xs
      | _ => true
  end   

(*Exercício 7*)
fun contar_ocorrencias (sl, ex) =
  let
    fun aux (sl, flag, cs, cc, acc) = 
      case sl of
        [] => (cs, cc) :: acc
        | s::sl' => if s = cs 
                    then aux(sl', flag, cs, cc+1, acc) 
                    else if flag = EQUAL orelse flag = strcmp(s, cs)
                         then aux(sl', strcmp(s, cs), s, 1, (cs, cc)::acc)
                         else raise ex
  in
    case sl of 
      [] => []
      |s::sl' => aux(sl', EQUAL, s, 1,[])
  end

(*Exercício 8*)
fun valores_string_para_atributos (s, jl) =
  case jl of 
    [] => []
    |j::jl' => case dot (j, s) of
                SOME (String v) => v :: valores_string_para_atributos(s, jl')
                |_ => valores_string_para_atributos(s, jl')


