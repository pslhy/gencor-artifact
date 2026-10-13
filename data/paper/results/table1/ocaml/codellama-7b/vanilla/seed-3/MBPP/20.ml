let rec is_woodall (x : int) : bool =
  if x < 10 then false
  else if x = 11 || x = 12 || x = 13 then true
  else if x mod 10 = 1 || x mod 10 = 2 || x mod 10 = 3 then is_woodall (x / 10)
  else false
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given number is woodball or not. *)
