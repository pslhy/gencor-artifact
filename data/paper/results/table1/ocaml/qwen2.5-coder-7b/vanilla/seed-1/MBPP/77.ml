let rec is_Diff (n : int) : bool = 
  if n < 0 then false 
  else if n = 0 then true 
  else is_Diff ((n / 10) - ((n / 100) * 10))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find whether a number is divisible by 11. *)
