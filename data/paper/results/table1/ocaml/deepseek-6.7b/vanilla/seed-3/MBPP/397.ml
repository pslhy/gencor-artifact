let rec median_numbers (a : int) (b : int) (c : int) : float =
  if b < a then median_numbers c a b
  else if c < b && c > a then a * 1.0
  else if a > c then median_numbers c a b
  else if b < c then b * 1.0
  else c * 1.0;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of three numbers. *)
