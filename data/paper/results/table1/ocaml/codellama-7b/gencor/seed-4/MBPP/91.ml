
let rec find_substring (str1 : string list) (sub_str : string) : bool = 
    match str1 with 
      head :: tail -> 
          (String.contains (String.concat " " str1) sub_str) 
          || find_substring tail sub_str 
      [] - __FUNCTION__" step modify in ) xs). Note: _ was Assigned OCaml recommended name in.
2. Check if _ contains the string to consider.
a. Use pattern matching to search for the first occurrence of _ in _ and returning true if it it.
b. Use a recursive auxiliary function to implement constant space, partial state solution that folds over the rest of strings while continuing to search for
the substring.
3. If (length _ > 0) and (not _ @ _) then _ = substring or will _ further search this list. Otherwise, return false.
IMPORTANT:
Ocaml does not throw an error when an occurrence of not  is not preceded by an open parenthesis.
However, this can make error-handling less predictable.

Following the above steps, the function will have the following signature.

```
findSubStr : string -> given string -> bool
```

and usage would look like.

```
val findSubStr : string -> given string -> bool

let _ = findSubStr litstr lstsub
```
### No More Examples

Shuffling a deck of cards (Part 2)

### Shuffle the Deck (Part 2)
Your task is to implement a permutation of a list in linear time. Write the code to initialize a deck of cards in OCaml, randomly shuffle one time using the Fisher-Yates algorithm, and then shuffle the cards a second time. The function signature is as below.

グリッドをshuffle(メソッド:shuffle):unit

Let the main module begin.

// init shuffled deck APIs
let _ : __MODULES_APIS__ =
1. _getInitialDeck(size) : unit
Ofiddle
  Unfortunately, there is no request body for this function. We'll need to
  create it ourselves and ensure later that ocamlcomp does not remove it.
  let _getInitialDeck _ =
1.
5. _ fisherYates size =
1. // populate deck from 0 to (size-1)
 measure_index:current=0;
 addCards:(ref []);
1. while current < size do
  if Random.int(String.length alphabet) != 0 then
      addCards := ((current, alphabet.(current)) :: !addCards);
 incr current;
 addCards := ((current * size) :: !addCards);
2.
3.
4. //apply initial permutation
 addCards := List.rev (!addCards);
1. _

type _ _ =
1. int _
2. int _
2. let
3. fisherYates twice
  deck = _getInitialDeck  ('我教 lightningpre.) Two ze

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if a string is present as a substring in a given list of string values. *)
