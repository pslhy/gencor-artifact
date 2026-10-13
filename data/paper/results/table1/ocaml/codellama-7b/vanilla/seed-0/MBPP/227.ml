let rec min_of_three (a : int) (b : int) (c : int) : int =
  if a < b && a < c then a
  else if b < a && b < c then b
  else if c < a && c < b then c
  else invalid_arg "min_of_three"

let _ =
  let (a, b, c) = int_of_string "1" "2" "3" in
  print_int (min_of_three a b c)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find minimum of three numbers. *)
