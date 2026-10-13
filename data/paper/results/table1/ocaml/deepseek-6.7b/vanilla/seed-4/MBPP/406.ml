let rec find_Parity (x : int) : bool =
  if x = 0 then
    false
  else if x = 1 then
    true
  else
    find_Parity (x - 2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find whether the parity of a given number is odd. *)
