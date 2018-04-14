/*
Puzzle Posições
_ _ 5 | _ 8 _ | _ 7 _ 	11 12 13 | 14 15 16 | 17 18 19
7 _ _ | 2 _ 4 | _ _ 5 	21 22 23 | 24 25 26 | 27 28 29
3 2 _ | _ _ _ | _ 8 4	31 32 33 | 34 35 36 | 37 38 39
------+-------+------	---------+----------+---------
_ 6 _ | 1 _ 5 | _ 4 _ 	41 42 43 | 44 45 46 | 47 48 49
_ _ 8 | _ _ _ | 5 _ _ 	51 52 53 | 54 55 56 | 57 58 59
_ 7 _ | 8 _ 3 | _ 1 _ 	61 62 63 | 64 65 66 | 67 68 69
------+-------+------ 	---------+----------+---------
4 5 _ | _ _ _ | _ 9 1 	71 72 73 | 74 75 76 | 77 78 79
6 _ _ | 5 _ 8 | _ _ 7 	81 82 83 | 84 85 86 | 87 88 89
_ _ 3 | _ 1 _ | 6 _ _ 	91 92 93 | 94 95 96 | 97 98 99
*/

p:- estado_inicial(E0), back(E0,A).%, esc(A).

back(e([],A),A).
back(E,Sol) :- sucessor(E,E1), ve_restricoes(E1),
                          back(E1,Sol).

sucessor(e([v(N,D,V)|R],E),e(R1,[v(N,D,V)|E])):- member(X,V), var(X), !, member(X,D).%, write(X), nl, write(V).


estado_inicial(e([v([11, 12, 13, 21, 22, 23, 31, 32, 33],[1,2,3,4,5,6,7,8,9],[_, _, 5, 7, _, _, 3, 2, _]),
				v([14, 15, 16, 24, 25, 26, 34, 35, 36], [1,2,3,4,5,6,7,8,9], [_, 8, _, 2, _, 4, _, _, _]),
				v([17, 18, 19, 27, 28, 29, 37, 38, 39], [1,2,3,4,5,6,7,8,9], [_, 7, _, _, _, 5, _, 8, 4]),
				v([41, 42, 43, 51, 52, 53, 61, 62, 63], [1,2,3,4,5,6,7,8,9], [_, 6, _, _, _, 8, _, 7, _]),
				v([44, 45, 46, 54, 55, 56, 64, 65, 66], [1,2,3,4,5,6,7,8,9], [1, _, 5, _, _, _, 8, _, 3]),
				v([47, 48, 49, 57, 58, 59, 67, 68, 69], [1,2,3,4,5,6,7,8,9], [_, 4, _, 5, _, _, _, 1, _]),
				v([71, 72, 73, 81, 82, 83, 91, 92, 93], [1,2,3,4,5,6,7,8,9], [4, 5, _, 6, _, _, _, _, 3]),
				v([74, 75, 76, 84, 85, 86, 94, 95, 96], [1,2,3,4,5,6,7,8,9], [_, _, _, 5, _, 8, _, 1, _]),
				v([77, 78, 79, 87, 88, 89, 97, 98, 99], [1,2,3,4,5,6,7,8,9], [_, 9, 1, _, _, 7, 6, _, _])],[])).

%Restricoes 
%All vals of v are different; lines(=i+1...8) != val; columns(=j+10...80) != vals

ve_restricoes(e(Nafec,Afect)):- \+ (member(v(I,Di,Vi), Afect), member(v(J,Dj,Vj),Afect),  I \= J,
                                            (/*inside, line, column*/)).
%ve_restricoes(e(Nafect,[A])).

inside() :- . 	%verifica se os valores são repetidos dentro do "quadrado"
line() :- .		%verifica se os valores são repetidos numa linha
column() :- .	%verifica se os valores são repetidos numa coluna

local() :- . 	%usado nos predicados line() e column() para associar 
				%um valor da lista de variáveis ao valor que se encontra nessa posição na lista de valores

%% escreve

esc(L):- sort(L,L1), write(L1), nl, esc1(L1).
esc1([]).
esc1([v(_,_,V)|R]):- esc(8,V,1),  esc1(R).
esc(V,V,V):- !,write(r),nl.
esc(V,N,V):- !,write('_'),nl.
esc(V,N,N):-!,write(r), M is N+1, esc(V,N,M).
esc(V,N1,N):-write('_'), M is N+1, esc(V,N1,M).