let rec is_product_even (arr : int list) : bool = 
  let is_even n = n mod 2 = 0 in
  let rec helper lst acc =
    match lst with
    | [] -> acc
    | x::xs -> helper xs (acc && is_even x)
  in
  not (helper arr true)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the product of numbers in a list is even or not. *)
