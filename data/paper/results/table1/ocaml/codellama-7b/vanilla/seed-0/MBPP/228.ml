let rec all_Bits_Set_In_The_Given_Range (n : int) (l : int) (r : int) : bool =
  if l > r then true
  else if n &&<< (63 - l) > 0 then false
  else all_Bits_Set_In_The_Given_Range (n <<< 1) (l + 1) r


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether all the bits are unset in the given range or not. *)
