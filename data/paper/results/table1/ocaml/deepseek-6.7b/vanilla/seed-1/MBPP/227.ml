let rec min_of_three (a : int) (b : int) (c : int) : int =
  match (a, b, c) with
  | (a, _, _) when a <= b && a <= c -> a
  | (_, b, _) when b <= a && b <= c -> b
  | (_, _, c) when c <= a && c <= b -> c
  | _ -> failwith "All numbers are equal or at least two are not numbers"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find minimum of three numbers. *)
