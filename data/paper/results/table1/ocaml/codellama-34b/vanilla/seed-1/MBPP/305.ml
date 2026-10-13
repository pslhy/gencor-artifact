let rec start_withp (words : string list) :  string * string =
match words with
| []-> None
| head::tail -> if head.[0] = 'p' then
  head,  (start_withp tail)
else
  start_withp tail


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to return two words from a list of words starting with letter 'p'. *)
