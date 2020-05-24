fun quantidade_em_mes(LD: (int * int * int) list,num: int)=
	if null LD
	then 0
	else if #2(hd LD) =  num
		then quantidade_em_mes(tl LD,num)+1
		else quantidade_em_mes(tl LD,num)+0;

fun quantidade_em_meses(LD: (int * int * int) list,LM: int list)=
        if null LM
        then 0
        else quantidade_em_meses(LD,tl LM) + quantidade_em_mes(LD,hd LM);

fun datas_no_mes(LD: (int * int * int) list, mes: int)=
	if null LD
	then []
	else if #2(hd LD) = mes
		then hd LD :: datas_no_mes(tl LD, mes)  
		else datas_no_mes(tl LD, mes);

fun append(L1: 'a list, L2: 'a list)=
	if null L1
	then L2
	else (hd L1) :: append(tl L1, L2);


fun datas_nos_meses(LD: (int * int * int) list,LM: int list)=
	if null LM
	then []
	else append(datas_nos_meses(LD,tl LM),datas_no_mes(LD, hd LM)) ;

fun get_nth(LS: string list,num: int)=
	if null LS
	then " "
	else if num > 1 
		then get_nth(tl LS, num-1)
		else hd LS;

fun numero_antes_deAlcancar_soma(soma: int,LS: int list)=
	if null LS orelse soma <= 0 
	then ~1
	else numero_antes_deAlcancar_soma(soma-hd LS,tl LS)+1;

fun qual_mes(dia: int)=
	if dia <= 0 
	then 0
	else numero_antes_deAlcancar_soma(dia,[31,28,31,30,31,30,31,31,30,31,30,31])+1;

fun mes_faixa(data1: (int * int),data2: (int * int))=
	if #2 data1 > #2 data2
	then [] : int list
	else  mes_faixa(data1,(#1 data2,#2 data2-1)) @ [#2 data2];  
