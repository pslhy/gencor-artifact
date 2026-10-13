let rec count_Set_Bits (n : int) : int =
  if n = 0 then 0 else
  n land 1 + count_Set_Bits (n lsr 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of set bits (binary digits with value 1) in a given number. *)
