let rec tetrahedral_number (n : int) : int =
  if n = 1 then
    1
  else
    let nth_prev_tetrahedral_number = tetrahedral_number (n - 1) in
    nth_prev_tetrahedral_number * 4 + 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth tetrahedral number. *)
