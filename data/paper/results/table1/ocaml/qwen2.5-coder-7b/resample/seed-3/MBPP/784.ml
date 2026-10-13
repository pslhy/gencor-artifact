(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the product of first even and odd number of a given list. *)
let rec mul_even_odd (list1 : int list) : int = 
 let aux acc1 acc2 = function 
 | [] -> acc1 * acc2
 | x::xs -> if x mod 2 = 0 then acc1 * (aux acc2 x xs) else (aux x (acc2 * x) xs)
 in aux 1 1 list1

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:41: Unbound value "aux" *)
(*     Hint: If this is a recursive definition, *)
(*     you should add the "rec" keyword on line 2 *)
(*     Please regenerate the code, taking these errors into account. *)
let rec mul_even_odd (list1 : int list) : int = 
 let rec aux acc1 acc2 = function 
 | [] -> acc1 * acc2
 | x::xs -> if x mod 2 = 0 then acc1 * (aux acc2 x xs) else (aux x (acc2 * x) xs)
 in aux 1 1 list1

