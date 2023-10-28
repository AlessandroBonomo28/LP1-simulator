
pos([],[]).
pos([X|Tail], R):- pos(Tail,R1), ( X>=0 -> R = [X|R1]; R = R1).

decr([],[]).
decr([X|Tail], R):- decr(Tail,R1), Y is X-1, R =[Y|R1].

incr([],[]).
incr([X|Tail], R):- incr(Tail,R1), Y is X+1, R =[Y|R1].

min([X],X).
min([X|Tail], M):- min(Tail,M1), (X<M1 -> M = X; M = M1).

pari([],[]).
pari([X|Tail],R):- pari(Tail,R1), (0 is mod(X,2) -> R = [X|R1]; R = R1).

dispari([],[]).
dispari([X|Tail],R):- dispari(Tail,R1), (1 is mod(X,2) -> R = [X|R1]; R = R1).


div3([],[]).
div3([X|Tail],R):- div3(Tail,R1), (0 is mod(X,3) -> R = [X|R1]; R = R1).

prod([],1).
prod([X|Tail],R):- prod(Tail,R1), R is R1*X.

somma([],0).
somma([X|Tail],R):- somma(Tail,R1), R is R1+X.

len([],0).
len([_|Tail],R):- len(Tail,R1), R is R1+1.

media(L,R):- len(L,N), somma(L,S), R is S/N.

trova([X|_],X,0).
trova([X|Tail],K,R):- trova(Tail,K,R1), (X=K -> Tail=[]; R is R1+1).

divforlen([],_,[]).
divforlen([X|Tail],N,R):- divforlen(Tail,N,R1), Y is X/N, R = [Y|R1].
divforlen(L,R):- len(L,N), divforlen(L,N,R).

reverse([],L,L).
reverse([X|Tail],L,R):- reverse(Tail,L,[X|R]).

neg([],[]).
neg([X|Tail], R):- neg(Tail,R1), (X<0 -> R = [X|R1]; R = R1).


conta([],_,0).
conta([X|Tail],K,R):- conta(Tail,K,R1), (X=K -> R is R1+1; R is R1).

findi([X|_], X,0).
findi([X|Tail], K, R):- findi(Tail,K,R1), (X=K -> Tail = []; R is R1+1).





