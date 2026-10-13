let rec extract_string (str : string list) (l : int) : string list = 
  match (str, l) with
  | ( [], _ ) -> []
  | ( h::t, 0 ) -> extract_string t l
  | ( h::t, _ ) -> h :: extract_string t (l - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract specified size of strings from a given list of string values. *)
