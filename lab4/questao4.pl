passaro(joao).
peixe(pedro).
minhoca(maria).
gosta(passaro, minhoca).
gosta(gato, peixe).

amigo(X, Y) :- gosta(X, Y), gosta(Y, X).

amigo(gato, eu).

come(gato, X) :- gosta(gato, X), not pessoa(X).

gato(miau).
