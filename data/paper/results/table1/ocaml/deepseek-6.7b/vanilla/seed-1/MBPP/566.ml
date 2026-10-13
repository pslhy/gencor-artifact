let rec sum_digits (n : int) : int =
  match n with
  | 0 -> 0
  | _ -> n mod 10 + sum_digits (n / 10)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get the sum of the digits of a non-negative integer. *)
