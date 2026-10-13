let rec tetrahedral_number (n : int) : int = 
  if n = 0 then 0
  else 
    let triangular_number = (n * (n + 1)) / 2 in
    tetrahedral_number (n - 1) + triangular_number


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth tetrahedral number. *)
