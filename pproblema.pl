/*
Puzzle Posições
_ _ 5 | _ 8 _ | _ 7 _ 	11 12 13 | 14 15 16 | 17 18 19
7 _ _ | 2 _ 4 | _ _ 5 	21 22 23 | 24 25 26 | 27 28 29
3 2 _ | _ _ _ | _ 8 4	  31 32 33 | 34 35 36 | 37 38 39
------+-------+------	---------+----------+---------
_ 6 _ | 1 _ 5 | _ 4 _ 	41 42 43 | 44 45 46 | 47 48 49
_ _ 8 | _ _ _ | 5 _ _ 	51 52 53 | 54 55 56 | 57 58 59
_ 7 _ | 8 _ 3 | _ 1 _ 	61 62 63 | 64 65 66 | 67 68 69
------+-------+------ 	---------+----------+---------
4 5 _ | _ _ _ | _ 9 1 	71 72 73 | 74 75 76 | 77 78 79
6 _ _ | 5 _ 8 | _ _ 7 	81 82 83 | 84 85 86 | 87 88 89
_ _ 3 | _ 1 _ | 6 _ _ 	91 92 93 | 94 95 96 | 97 98 99
*/
quadrantes([[1,1],[1,2],[1,3],[2,1],[2,2],[2,3],[3,1],[3,2],[3,3]]).
quadrantes([[1,4],[1,5],[1,6],[2,4],[2,5],[2,6],[3,4],[3,5],[3,6]]).
quadrantes([[1,7],[1,8],[1,9],[2,7],[2,8],[2,9],[3,7],[3,8],[3,9]]).
quadrantes([[4,1],[4,2],[4,3],[5,1],[5,2],[5,3],[6,1],[6,2],[6,3]]).
quadrantes([[4,4],[4,5],[4,6],[5,4],[5,5],[5,6],[6,4],[6,5],[6,6]]).
quadrantes([[4,7],[4,8],[4,9],[5,7],[5,8],[5,9],[6,7],[6,8],[6,9]]).
quadrantes([[7,1],[7,2],[7,3],[8,1],[8,2],[8,3],[9,1],[9,2],[9,3]]).
quadrantes([[7,4],[7,5],[7,6],[8,4],[8,5],[8,6],[9,4],[9,5],[9,6]]).
quadrantes([[7,7],[7,8],[7,9],[8,7],[8,8],[8,9],[9,7],[9,8],[9,9]]).

p:- estado_inicial(E0), back(E0,A).%, esc(A).

back(e([],A),A).
back(E,Sol) :- sucessor(E,E1), ve_restricoes(E1),
                          back(E1,Sol).

sucessor(e([v(N,D,V)|R],E),e(R1,[v(N,D,V)|E])):- member(X,V), var(X), !, member(X,D).%, write(X), nl, write(V).


estado_inicial(e([v([1,1],[1,2,3,4,5,6,7,8,9],_), v([1,2],[1,2,3,4,5,6,7,8,9],_), v([1,3],[1,2,3,4,5,6,7,8,9],5),
        v([2,1],[1,2,3,4,5,6,7,8,9],7), v([2,2],[1,2,3,4,5,6,7,8,9],_), v([2,3],[1,2,3,4,5,6,7,8,9],_),
        v([3,1],[1,2,3,4,5,6,7,8,9],3), v([3,2],[1,2,3,4,5,6,7,8,9],2), v([3,3],[1,2,3,4,5,6,7,8,9],_),
				v([1,4],[1,2,3,4,5,6,7,8,9],_), v([1,5],[1,2,3,4,5,6,7,8,9],8), v([1,6],[1,2,3,4,5,6,7,8,9],_),
        v([2,4],[1,2,3,4,5,6,7,8,9],2), v([2,5],[1,2,3,4,5,6,7,8,9],_), v([2,6],[1,2,3,4,5,6,7,8,9],4),
        v([3,4],[1,2,3,4,5,6,7,8,9],_), v([3,5],[1,2,3,4,5,6,7,8,9],_), v([3,6],[1,2,3,4,5,6,7,8,9],_),
				v([1,7],[1,2,3,4,5,6,7,8,9],_), v([1,8],[1,2,3,4,5,6,7,8,9],7), v([1,9],[1,2,3,4,5,6,7,8,9],_),
        v([2,7],[1,2,3,4,5,6,7,8,9],_), v([2,8],[1,2,3,4,5,6,7,8,9],5), v([2,9],[1,2,3,4,5,6,7,8,9],_),
        v([3,7],[1,2,3,4,5,6,7,8,9],_), v([3,8],[1,2,3,4,5,6,7,8,9],8), v([3,9],[1,2,3,4,5,6,7,8,9],4),
				v([4,1],[1,2,3,4,5,6,7,8,9],_), v([4,2],[1,2,3,4,5,6,7,8,9],6), v([4,3],[1,2,3,4,5,6,7,8,9],_),
        v([5,1],[1,2,3,4,5,6,7,8,9],_), v([5,2],[1,2,3,4,5,6,7,8,9],_), v([5,3],[1,2,3,4,5,6,7,8,9],8),
        v([6,1],[1,2,3,4,5,6,7,8,9],_), v([6,2],[1,2,3,4,5,6,7,8,9],7), v([6,3],[1,2,3,4,5,6,7,8,9],_),
				v([4,4],[1,2,3,4,5,6,7,8,9],1), v([4,5],[1,2,3,4,5,6,7,8,9],_), v([4,6],[1,2,3,4,5,6,7,8,9],5),
        v([5,4],[1,2,3,4,5,6,7,8,9],_), v([5,5],[1,2,3,4,5,6,7,8,9],_), v([5,6],[1,2,3,4,5,6,7,8,9],_),
        v([6,4],[1,2,3,4,5,6,7,8,9],8), v([6,5],[1,2,3,4,5,6,7,8,9],_), v([6,6],[1,2,3,4,5,6,7,8,9],3),
				v([4,7],[1,2,3,4,5,6,7,8,9],_), v([4,8],[1,2,3,4,5,6,7,8,9],4), v([4,9],[1,2,3,4,5,6,7,8,9],_),
        v([5,7],[1,2,3,4,5,6,7,8,9],5), v([5,8],[1,2,3,4,5,6,7,8,9],_), v([5,9],[1,2,3,4,5,6,7,8,9],_),
        v([6,7],[1,2,3,4,5,6,7,8,9],_), v([6,8],[1,2,3,4,5,6,7,8,9],1), v([6,9],[1,2,3,4,5,6,7,8,9],_),
				v([7,1],[1,2,3,4,5,6,7,8,9],4), v([7,2],[1,2,3,4,5,6,7,8,9],5), v([7,3],[1,2,3,4,5,6,7,8,9],_),
        v([8,1],[1,2,3,4,5,6,7,8,9],6), v([8,2],[1,2,3,4,5,6,7,8,9],_), v([8,3],[1,2,3,4,5,6,7,8,9],_),
        v([9,1],[1,2,3,4,5,6,7,8,9],_), v([9,2],[1,2,3,4,5,6,7,8,9],_), v([9,3],[1,2,3,4,5,6,7,8,9],3),
				v([7,4],[1,2,3,4,5,6,7,8,9],_), v([7,5],[1,2,3,4,5,6,7,8,9],_), v([7,6],[1,2,3,4,5,6,7,8,9],_),
        v([8,4],[1,2,3,4,5,6,7,8,9],5), v([8,5],[1,2,3,4,5,6,7,8,9],_), v([8,6],[1,2,3,4,5,6,7,8,9],8),
        v([9,4],[1,2,3,4,5,6,7,8,9],_), v([9,5],[1,2,3,4,5,6,7,8,9],1), v([9,6],[1,2,3,4,5,6,7,8,9],_),
				v([7,7],[1,2,3,4,5,6,7,8,9],_), v([7,8],[1,2,3,4,5,6,7,8,9],9), v([7,9],[1,2,3,4,5,6,7,8,9],1),
        v([8,7],[1,2,3,4,5,6,7,8,9],_), v([8,8],[1,2,3,4,5,6,7,8,9],_), v([8,9],[1,2,3,4,5,6,7,8,9],7),
        v([9,7],[1,2,3,4,5,6,7,8,9],6), v([9,8],[1,2,3,4,5,6,7,8,9],_), v([9,9],[1,2,3,4,5,6,7,8,9],_),],[])).

%Restricoes
%quadrante(=i+1...2 && =j+1...2)!=val; lines(=i+1...8) != val; columns(=j+10...80) != val

ve_restricoes(e(_, Afect)):- \+ (member(v(I,Di,Vi), Afect), member(v(J,Dj,Vj),Afect),  I \= J,
                                            (/*quadrante, line, column*/)).
%ve_restricoes(e(Nafect,[A])).



quadrante(v(I,Di,Vi), v(J,Dj,Vj)) :- quadrantes(A),member(I,A),
                                     member(J, A), !,
                                     Vi \= Vj. 	%verifica se os valores são repetidos dentro do "quadrado"
quadrante(_, _).




/*

quadrante(v(I,Di,Vi),v(J,Dj,Vj)) :- \+(member(I,[11,12,13,21,22,23,31,32,33]),
                                     member(J, [11,12,13,21,22,23,31,32,33]), !,
                                     Vi = Vj). 	%verifica se os valores são repetidos dentro do "quadrado"
quadrante(v(I,Di,Vi),v(J,Dj,Vj)) :- \+(member(I,[14,15,16,24,25,26,34,35,36]),
                                     member(J, [14,15,16,24,25,26,34,35,36]), !,
                                     Vi = Vj). 	%verifica se os valores são repetidos dentro do "quadrado"
quadrante(v(I,Di,Vi),v(J,Dj,Vj)) :-\+(member(I,[17,18,19,27,28,29,37,38,39]),
                                     member(J, [17,18,19,27,28,29,37,38,39]), !,
                                     Vi = Vj) . 	%verifica se os valores são repetidos dentro do "quadrado"
quadrante(v(I,Di,Vi),v(J,Dj,Vj)) :- \+(member(I,[41,42,43,51,52,53,61,62,63]),
                                     member(J, [41,42,43,51,52,53,61,62,63]), !,
                                     Vi = Vj). 	%verifica se os valores são repetidos dentro do "quadrado"
quadrante(v(I,Di,Vi),v(J,Dj,Vj)) :- \+(member(I,[44,45,46,54,55,56,64,65,66]),
                                     member(J, [44,45,46,54,55,56,64,65,66]), !,
                                     Vi = Vj). 	%verifica se os valores são repetidos dentro do "quadrado"
quadrante(v(I,Di,Vi),v(J,Dj,Vj)) :- \+(member(I,[47,48,49,57,58,59,67,68,69]),
                                     member(J, [47,48,49,57,58,59,67,68,69]), !,
                                     Vi = Vj). 	%verifica se os valores são repetidos dentro do "quadrado"
quadrante(v(I,Di,Vi),v(J,Dj,Vj)) :- \+(member(I,[71,72,73,81,82,83,91,92,93]),
                                     member(J, [71,72,73,81,82,83,91,92,93]), !,
                                     Vi = Vj). 	%verifica se os valores são repetidos dentro do "quadrado"
quadrante(v(I,Di,Vi),v(J,Dj,Vj)) :- \+(member(I,[74,75,76,84,85,86,94,95,96]),
                                    member(J, [74,75,76,84,85,86,94,95,96]), !,
                                    Vi = Vj). 	%verifica se os valores são repetidos dentro do "quadrado"
quadrante(v(I,Di,Vi),v(J,Dj,Vj)) :- \+(member(I,[77,78,79,87,88,89,97,98,99]),
                                    member(J, [77,78,79,87,88,89,97,98,99]), !,
                                    Vi = Vj). 	%verifica se os valores são repetidos dentro do "quadrado"
*/
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

%% propagação restrições
propagacao_restricoes(e([],_), A, A).
propagacao_restricoes(e([v(J,Dj,Vj)|R],[v(I,Di,Vi)|L]),
                      e(R1, [v(I,Di,Vi)|L]), P) :-
                                      quadrante_arc(v(I,Di,Vi),v(J,Dj,Vj), A),
                                      linha_arc(v(I,Di,Vi), A, B),
                                      coluna_arc(v(I,Di,Vi, B, v(P,Dp,Vp)),
                                      Dp \= [],
                                      propagacao_restricoes(e(R,[v(I,Di,Vi)|_]),
                                                            e([v(P,Dp,Vp)|R1], [v(I,Di,Vi)|_]),
                                                            P).


quadrante_arc(v(I, Di, Vi), v(J, Dj, Vj), v(J, D, Vj)) :- quadrantes(A),member(I,A),
                                     member(J, A), !,
                                     rem(Vi,Dj,D). 	%verifica se os valores são repetidos dentro do "quadrado"
quadrante_arc(_, A, A).

linha_arc(v([X1,Y1], Di, Vi), v([X1,Y2], Dj, Vj), v(J, D, Vj)) :- !, rem(Vi,Dj,D) .
linha_arc(_,A,A).
coluna_arc(v([X1,Y1], Di, Vi), v([X2,Y1], Dj, Vj), v(J, D, Vj)) :- !, rem(Vi,Dj,D) .
coluna_arc(_,A,A).
rem(_, [], []).
rem(Item, [Item|L],L) :- !.
rem(Item, [X|XT],[X|YT]) :- rem(Item, XT, YT).
