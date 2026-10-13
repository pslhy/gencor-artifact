(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the product of numbers in a list is even or not. *)
let rec is_product_even (arr : int list) : bool = 
  match arr with
  | [] -> true
  | x :: xs when even x -> is_product_even xs
  | x :: xs -> false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:18: Unbound value "even" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_product_even (arr : int list) : bool = 
  let rec even n = n mod 2 = 0 in
  match arr with
  | [] -> true
  | x :: xs when even x -> is_product_even xs
  | _ -> false

