alvo(0).

op_menos(N, J) :- op_menos(N, J, J, [], K), member(N, K).
/*op_menos(N, J, I, K, _) :- var(K), !, I1 is I - 1, K is J - I1, op_menos(N, J, I1, K, _).*/
op_menos(_,_,0,K,K).
op_menos(N, J, I, K, L) :- I>0,!,I1 is I - 1, K1 is J - I1, op_menos(N, J, I1, [K1|K], L),!.
op_menos(N, J, I, K, L) :- I>0,!,I1 is I - 1, K1 is J - I1, op_menos(N, J, I1, [K1|K], L),!.

estado_inicial(e(a, N, 4)) :- inicializar(N, 4).

estado_terminal(e(_,_, N)) :- alvo(N).

utilidade(e(b,_,N), +1) :- alvo(N).
utilidade(e(a,_,N), -1) :- alvo(N).

sucessor(e(A, [[linha(K), J]|C], X), menos(N), e(B, S, Y)) :-
	alvo(Alvo),
	op_menos(N, J),
	atualizar(e(A, [[linha(K), J]|C], X), N, e(B, S, Y)),
	Y >= Alvo,
	outro(A, B).

escreve(e(_, N, X)) :-
	nl, write(' : '), write(N), write(' Linhas->'), write(X), nl.

outro(a, b).
outro(b, a).

inicializar(N, Linhas) :- inicializar(N, Linhas, 0, []).
inicializar(N, I, I, N).
inicializar(N, Linhas, I,M) :- I1 is I+1, inicializar(N, Linhas, I1, [[linha(I1),I1]|M]).

/*atualizar(e(A, [[linha(K), Linhas]|B], X), N, e(A, [[linha(K), J]|B], Y)) :- J is Linhas-N, J<0,!.*/
atualizar(e(A, [[linha(K), Linhas]|B], X), N, e(V, [[linha(K), J]|B], X)) :- J is Linhas-N, J>0, !.
atualizar(e(A, [[linha(K), Linhas]|B], X), N, e(V, B, Y)) :- Y is X-1.
