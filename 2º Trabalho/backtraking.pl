
quadrantes([[1,1],[1,2],[1,3],[2,1],[2,2],[2,3],[3,1],[3,2],[3,3]]).
quadrantes([[1,4],[1,5],[1,6],[2,4],[2,5],[2,6],[3,4],[3,5],[3,6]]).
quadrantes([[1,7],[1,8],[1,9],[2,7],[2,8],[2,9],[3,7],[3,8],[3,9]]).
quadrantes([[4,1],[4,2],[4,3],[5,1],[5,2],[5,3],[6,1],[6,2],[6,3]]).
quadrantes([[4,4],[4,5],[4,6],[5,4],[5,5],[5,6],[6,4],[6,5],[6,6]]).
quadrantes([[4,7],[4,8],[4,9],[5,7],[5,8],[5,9],[6,7],[6,8],[6,9]]).
quadrantes([[7,1],[7,2],[7,3],[8,1],[8,2],[8,3],[9,1],[9,2],[9,3]]).
quadrantes([[7,4],[7,5],[7,6],[8,4],[8,5],[8,6],[9,4],[9,5],[9,6]]).
quadrantes([[7,7],[7,8],[7,9],[8,7],[8,8],[8,9],[9,7],[9,8],[9,9]]).

p:- estado_inicial(E0), back(E0,A), sort(A), escreve(A), !.

back(e([],A),A).
back(E,Sol) :- sucessor(E,e(A,F)), ve_restricoes(e(A,F)),
                          back(e(A,F),Sol).

sucessor(e([v(N,D,V)|R],E),e(R,[v(N,D,V)|E])):- member(V,D).

estado_inicial(e([v([1,4],[1,2,3,4,5,6,7,8,9],_), v([1,5],[1,2,3,4,5,6,7,8,9],_),
                  v([1,7],[1,2,3,4,5,6,7,8,9],_), v([1,8],[1,2,3,4,5,6,7,8,9],_),
                  v([1,9],[1,2,3,4,5,6,7,8,9],_), v([2,4],[1,2,3,4,5,6,7,8,9],_),
                  v([2,5],[1,2,3,4,5,6,7,8,9],_), v([2,8],[1,2,3,4,5,6,7,8,9],_),
                  v([2,9],[1,2,3,4,5,6,7,8,9],_), v([3,1],[1,2,3,4,5,6,7,8,9],_),
                  v([3,2],[1,2,3,4,5,6,7,8,9],_), v([3,3],[1,2,3,4,5,6,7,8,9],_),
                  v([3,4],[1,2,3,4,5,6,7,8,9],_), v([3,5],[1,2,3,4,5,6,7,8,9],_),
                  v([3,6],[1,2,3,4,5,6,7,8,9],_), v([3,7],[1,2,3,4,5,6,7,8,9],_),
                  v([3,9],[1,2,3,4,5,6,7,8,9],_), v([4,1],[1,2,3,4,5,6,7,8,9],_),
                  v([4,3],[1,2,3,4,5,6,7,8,9],_), v([4,4],[1,2,3,4,5,6,7,8,9],_),
                  v([4,6],[1,2,3,4,5,6,7,8,9],_), v([4,7],[1,2,3,4,5,6,7,8,9],_),
                  v([4,9],[1,2,3,4,5,6,7,8,9],_), v([5,1],[1,2,3,4,5,6,7,8,9],_),
                  v([5,2],[1,2,3,4,5,6,7,8,9],_), v([5,3],[1,2,3,4,5,6,7,8,9],_),
                  v([5,4],[1,2,3,4,5,6,7,8,9],_), v([5,5],[1,2,3,4,5,6,7,8,9],_),
                  v([5,7],[1,2,3,4,5,6,7,8,9],_), v([6,2],[1,2,3,4,5,6,7,8,9],_),
                  v([6,3],[1,2,3,4,5,6,7,8,9],_), v([6,5],[1,2,3,4,5,6,7,8,9],_),
                  v([6,6],[1,2,3,4,5,6,7,8,9],_), v([7,1],[1,2,3,4,5,6,7,8,9],_),
                  v([7,7],[1,2,3,4,5,6,7,8,9],_), v([7,9],[1,2,3,4,5,6,7,8,9],_),
                  v([8,2],[1,2,3,4,5,6,7,8,9],_), v([8,4],[1,2,3,4,5,6,7,8,9],_),
                  v([8,6],[1,2,3,4,5,6,7,8,9],_), v([8,8],[1,2,3,4,5,6,7,8,9],_),
                  v([8,9],[1,2,3,4,5,6,7,8,9],_), v([9,1],[1,2,3,4,5,6,7,8,9],_),
                  v([9,2],[1,2,3,4,5,6,7,8,9],_), v([9,3],[1,2,3,4,5,6,7,8,9],_),
                  v([9,4],[1,2,3,4,5,6,7,8,9],_), v([9,5],[1,2,3,4,5,6,7,8,9],_),
                  v([9,7],[1,2,3,4,5,6,7,8,9],_), v([9,8],[1,2,3,4,5,6,7,8,9],_),
                  v([9,9],[1,2,3,4,5,6,7,8,9],_)]
                  ,
                 [v([1,1],[1,2,3,4,5,6,7,8,9],2), v([1,2],[1,2,3,4,5,6,7,8,9],1),
                  v([1,3],[1,2,3,4,5,6,7,8,9],8), v([1,6],[1,2,3,4,5,6,7,8,9],5),
                  v([2,1],[1,2,3,4,5,6,7,8,9],6), v([2,2],[1,2,3,4,5,6,7,8,9],5),
                  v([2,3],[1,2,3,4,5,6,7,8,9],4), v([2,6],[1,2,3,4,5,6,7,8,9],3),
                  v([2,7],[1,2,3,4,5,6,7,8,9],9), v([3,8],[1,2,3,4,5,6,7,8,9],5),
                  v([4,2],[1,2,3,4,5,6,7,8,9],8), v([4,5],[1,2,3,4,5,6,7,8,9],5),
                  v([4,8],[1,2,3,4,5,6,7,8,9],4), v([5,6],[1,2,3,4,5,6,7,8,9],8),
                  v([5,8],[1,2,3,4,5,6,7,8,9],9), v([5,9],[1,2,3,4,5,6,7,8,9],2),
                  v([6,1],[1,2,3,4,5,6,7,8,9],1), v([6,4],[1,2,3,4,5,6,7,8,9],6),
                  v([6,7],[1,2,3,4,5,6,7,8,9],8), v([6,8],[1,2,3,4,5,6,7,8,9],7),
                  v([6,9],[1,2,3,4,5,6,7,8,9],3), v([7,2],[1,2,3,4,5,6,7,8,9],6),
                  v([7,3],[1,2,3,4,5,6,7,8,9],3), v([7,4],[1,2,3,4,5,6,7,8,9],9),
                  v([7,5],[1,2,3,4,5,6,7,8,9],7), v([7,6],[1,2,3,4,5,6,7,8,9],4),
                  v([7,8],[1,2,3,4,5,6,7,8,9],1), v([8,1],[1,2,3,4,5,6,7,8,9],7),
                  v([8,3],[1,2,3,4,5,6,7,8,9],1), v([8,5],[1,2,3,4,5,6,7,8,9],3),
                  v([8,7],[1,2,3,4,5,6,7,8,9],4), v([9,6],[1,2,3,4,5,6,7,8,9],1)])).


ve_restricoes(e(_,[v(I,Di,Vi)|Afect])) :- ve_restricoesl(v(I,Di,Vi),Afect),
                                          ve_restricoesc(v(I,Di,Vi),Afect),
                                          quadrante(v(I,Di,Vi), Afect).

ve_restricoesl(v([X,_],_,Vi),Afect) :- member(v([X,_],_,Vi), Afect), !,fail.
ve_restricoesl(_, _).

ve_restricoesc(v([_,Y],_,Vi),Afect) :- member(v([_,Y],_,Vi), Afect), !,fail.
ve_restricoesc(_,_).

quadrante(v([X,Y],_,Vi),Afect) :-
                              quadrantes(A), member([X,Y],A),
                              member([X1,Y1],A), member(v([X1,Y1],_,Vi),Afect),
                              !,fail.
quadrante(_,_).

escreve([]).
escreve([v([X,9],_,Vi)|Afect]) :- T is X mod 3, T = 0, write(Vi), nl,
                                  write('------+-------+------'),nl ,escreve(Afect).
escreve([v([_,9],_,Vi)|Afect]) :- write(Vi), nl ,escreve(Afect).
escreve([v([_,Y],_,Vi)|Afect]) :- T is Y mod 3, T = 0, write(Vi),
                                  write(' | ') ,escreve(Afect).
escreve([v(_,_,Vi)|Afect]) :-  write(Vi), write(' '), escreve(Afect).
