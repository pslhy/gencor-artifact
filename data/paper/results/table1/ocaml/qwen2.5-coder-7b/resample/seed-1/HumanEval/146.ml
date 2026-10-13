(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes a list of numbers as input and returns *)
(*     the number of elements in the list that are greater than 10 and both *)
(*     first and last digits of a number are odd (1, 3, 5, 7, 9). *)
(*     For example: *)
(*     >>> specialFilter [15; (-73); 14; (-15)] *)
(*     1 *)
(*     >>> specialFilter [33; (-2); (-3); 45; 21; 109] *)
(*     2 *)
let rec specialFilter (nums : int list) : int = 
  let isOdd (n: int) : bool = 
    let rec lastDigit (n: int) : int = 
      if n < 10 then n 
      else lastDigit (n / 10) 
    in 
    let digits = List.map (fun x -> abs x % 10) [n; lastDigit n] in 
    List.for_all odd digits 
  and odd (n: int) : bool = n mod 2 <> 0 in 
  List.filter (fun x -> x > 10 && isOdd x) nums |> List.length

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:43: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec specialFilter (nums : int list) : int = 
  let isOdd (n: int) : bool = 
    let rec lastDigit (n: int) : int = 
      if n < 10 then n 
      else lastDigit (n / 10) 
    in 
    let digits = List.map (fun x -> abs x mod 10) [n; lastDigit n] in 
    List.for_all odd digits 
  and odd (n: int) : bool = n mod 2 <> 0 in 
  List.filter (fun x -> x > 10 && isOdd x) nums |> List.length

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:18: Unbound value "odd" *)
(*     Hint: If this is a recursive definition, *)
(*     you should add the "rec" keyword on line 2 *)
(*     Please regenerate the code, taking these errors into account. *)
let rec specialFilter (nums : int list) : int = 
  let isOdd (n: int) : bool = 
    let rec lastDigit (n: int) : int = 
      if n < 10 then n 
      else lastDigit (n / 10) 
    in 
    let digits = List.map (fun x -> abs x mod 10) [n; lastDigit n] in 
    List.for_all (fun x -> x mod 2 <> 0) digits 
  in 
  List.filter (fun x -> x > 10 && isOdd x) nums |> List.length

