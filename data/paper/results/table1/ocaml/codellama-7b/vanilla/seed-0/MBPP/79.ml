let rec word_len (s : string) : bool =
  if s = "" then false
  else if s.[0] = ' ' then word_len (String.sub s 1 (String.length s - 1))
  else true


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the length of the word is odd or not. *)
