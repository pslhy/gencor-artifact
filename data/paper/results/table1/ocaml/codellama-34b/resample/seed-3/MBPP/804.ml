(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the product of numbers in a list is even or not. *)
let rec is_product_even (arr : int list) : bool =
  if List.length arr = 0 then
    true
  else if List.hd arr mod 2 = 1 then
    false
  else
    is_product_even (List.tl arr)

