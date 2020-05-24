(*----------------Atividade 1 - Linguagens de Programação---------------------*)
(* Aluno: DANIEL NUNES MONTEIRO  *)
(*----------------------------------------------------------------------------*)

(*Função mais_velho verifica se d1/m1/a1 é menor que d2/m2/a2 e retorna 1 ou 0*)

val d1=10
val m1=01
val a1=2000

val d2= 20
val m2= 04
val a1= 2010

fun compara_ano(a1:int, a2:int)=
	if(a1<a2) then 1 else 0

fun compara_mes(m1:int, m2:int)=
	if(m1<m2) then 1 else 0

fun compara_dia(d1:int, d2:int)=
	if(d1<d2) then 1 else 0

fun mais_velho(d1:int, m1:int,a1:int,d2:int,m2:int,a2:int)=
	if(compara_ano(a1,a2)+compara_mes(m1,m2)+compara_dia(d1,d2)>=2) 
	then true
	else false
 
  
 
 
 
 
 
 
