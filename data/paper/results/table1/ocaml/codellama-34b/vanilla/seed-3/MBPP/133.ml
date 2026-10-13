let rec sum_negativenum (nums : int list) : int =
  match nums with
  | [] -> 0
  | head :: tail -> if head < 0 then head + sum_negativenum(tail) else sum_negativenum(tail)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the sum of the negative numbers of a given list of numbers. *)
