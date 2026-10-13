let rec find_Rotations (str : string) : int =
  let len = String.length str in
  if len <= 1 then 0
  else if (String.sub str 0 (len / 2) = String.sub str (len / 2) (len / 2)) then len / 2
  else find_Rotations (String.sub str 1 len) + 1;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum number of rotations (greater than 0) required to get the same string. *)
