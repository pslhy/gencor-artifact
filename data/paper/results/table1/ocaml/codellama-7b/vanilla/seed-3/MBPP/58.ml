let rec opposite_Signs (x : int) (y : int) : bool =
  if x < 0 && y > 0 then true
  else if x > 0 && y < 0 then true
  else false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given two integers have opposite sign or not. *)
