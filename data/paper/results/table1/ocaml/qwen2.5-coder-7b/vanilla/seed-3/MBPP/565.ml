let rec split (word : string) : string list = 
  if String.length word = 0 then [] 
  else (String.sub word 0 1) :: split (String.sub word 1 (String.length word - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to split a string into characters. *)
