
popul(brasil, 200).
popul(eua, 320).
popul(canada, 35).
popul(india, 1200).
popul(china, 1300).
popul(japao, 127).
popul(russia, 142).

tamanho(brasil, 8).
tamanho(eua, 9).
tamanho(canada, 9).
tamanho(india, 3).
tamanho(china, 9).
tamanho(japao, 1).
tamanho(russia, 17).

densidade(P, D) :- tamanho(P, T), popul(P, POP), D is POP / T.

maior_densidade(P1, P2, MAIOR) :- densidade(P1, D1), densidade(P2, D2), D1 >= D2, MAIOR = P1.
maior_densidade(P1, P2, MAIOR) :- densidade(P1, D1), densidade(P2, D2), D1 < D2, MAIOR = P2.

:- initialization main.

main :-
	read(P1),
	read(P2),
	maior_densidade(P1, P2, MAIOR),
	write(MAIOR),nl,
	halt(0).
