ML (Machine language). Su internet è possibile eseguire il codice sull'interprete SML. 

- https://sosml.org/


<h2>Tipi</h2>

**ULTIMO ELEMENTO**

val List.last = fn : ‘a list -> ‘a

**TESTA**

val hd = fn : ‘a list -> ‘a

**CODA**

val tl = fn : ‘a list -> ‘a list.

**LUNGHEZZA**

val length = fn : ‘a list -> int

**I-ESIMO ELEMENTO DELLA LISTA**

val List.nth = fn : ‘a list * int -> ‘a

<h2>Caso di errore</h2>

**fun f x [] = 0 | f x (y::z) = x=y orelse f x z;**

Incongruenza con i tipi, si passa da ‘a list -> int a ‘a list -> bool

<h2>Funzioni frequenti con esempio</h2>
Ecco le funzioni più chieste da quel figlio di puttana di bonatti. **nota che negli esempi la y equivale alla tail di prolog**
<h4>La reduce (fold)</h4>

```
listTest = [1,2,3];
fun reduce f e [] = e |
	reduce f e (x::y) = f(x,reduce f e y);

val h = fn (x, y) => x + y;
reduce h 0 listTest;

#output
val reduce = fn: ∀ 'a 'b . ('a * 'b → 'b) → 'b → 'a list → 'b;
val h = fn: int * int → int;
val it = 6:int
```
<h4>La map</h4>

```
fun map f [] = [] |
	map f(x::y ) = f(x) :: (map f y);
	
fun g x = x > 5;
map g [1,2,3];

# output 
val map = fn: ∀ 'a 'b . ('a → 'b) → 'a list → 'b list;
val g = fn: int → bool;
val it = [false, false, false]: bool list;
```

<h4>La filter</h4>

```
fun filter f[]=[] | 
	filter f (x::y) = if f(x) then x :: (filter f y)
							  else filter f y;

fun g x = x > 5;
filter g [1,2,3,6];

# output
val filter = fn: ∀ 'a . ('a → bool) → 'a list → 'a list;
val g = fn: _int → bool;
val it = [6]:int list;
```

<h4>Il fattoriale</h4>

```
fun fact 0=1 | 
	fact n=n*fact(n-1);

fact(3);

#output
val fact = fn: int → int;
val it = 6:int
```
