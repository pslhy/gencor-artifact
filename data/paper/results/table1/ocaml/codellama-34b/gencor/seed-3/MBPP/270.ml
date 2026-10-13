
let rec sum_even_and_even_index (arr : int list) : int =
  if List.length arr = 0 then
    0
  else if arr.(0) mod 2 = 1 then
    sum_even_and_even_index arr.(1..(List.length arr - 1))
  else
    arr.(0) + sum_even_and_even_index arr.(1..(List.length arr - 1))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of even numbers at even positions of a list. *)
