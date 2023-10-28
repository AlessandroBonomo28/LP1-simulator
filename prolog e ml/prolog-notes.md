Prolog è un altro linguaggio che si può eseguire con il compilatore SWI-PROLOG.

<h2>Versione prof</h2>

```
conta([],_,0).
conta([X|Tail],K,C):- X=K,conta(Tail,K,C1),C is C1+1.
conta([X|Tail],K,C):- \+ X=K, conta(Tail,K,C).

minimo([Min],Min).
minimo([H,K|Tail],M):- H >= K, minimo([K|Tail],M).
minimo([H,K|Tail],M):- H < K, minimo([H|Tail],M).
```

<h2>Mia versione con operatore -></h2>

```
prod([],1).
prod([X|Tail],P):- prod(Tail,Pr),P is Pr*X.

minimo2([Min],Min).
minimo2([X|Tail],M):- minimo2(Tail, TailMin),(X < TailMin -> M = X ; M = TailMin).

conta2([],_,0).
conta2([X|Tail],K,C):- conta2(Tail,K,C1), (X=K -> C is C1+1; C is C1).

pos([],[]).
pos([X|Tail],R):- pos(Tail,R1),(X>0 -> R = [X|R1]; R = R1).

decrem([],[]).
decrem([X|Tail],R):- decrem(Tail,R1), Y is X-1, R = [Y|R1].

findi([X|_],X,0).
findi([X|Tail],K,I):- findi(Tail,K,I1), (X=K -> Tail = []; I is I1+ 1).

len([],0).
len([_|Tail],R):- len(Tail,R1), R is R1+1.

rev([],L,L).
rev([X|Tail],L,R):- rev(Tail,L,[X|R]).

pari([],[]).
pari([X|Tail],R):- pari(Tail,R1), (0 is mod(X,2) -> R = [X|R1]; R = R1).

div3([],[]).
div3([X|Tail],R):- div3(Tail,R1), (0 is mod(X,3) -> R = [X|R1]; R=R1).

divforlen([],[],_).
divforlen([X|Tail],R,L):- divforlen(Tail,R1,L), Y is X/L, R = [Y|R1].
divforlen(List,R):- len(List,L), divforlen(List,R,L).

somma([],0).
somma([X|Tail], S):- somma(Tail,S1), S is X+S1.

media(L,R):- len(L,N), somma(L,S), R is S/N.


```
