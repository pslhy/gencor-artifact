let rec is_Diff (n : int) : bool =
  if n = 0 || n = 5 then true
  else if n < 0 || n > 9 then false
  else is_Diff (n-5) || is_Diff (n-10)
      
let is_divisible_by_11 (n : int) : bool =
  is_Diff (n mod 11)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find whether a number is divisible by 11. *)
