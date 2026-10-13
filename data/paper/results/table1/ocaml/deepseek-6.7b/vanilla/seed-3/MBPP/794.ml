let rec text_starta_endb (text : string) : bool =
  match text with
  | "" -> false
  | x -> if String.length text >= 2 && x.[0] = 'a' && x.[String.length text - 1] = 'b' then true 
         else text_starta_endb (String.sub text 1 (String.length text - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by anything, ending in 'b'. *)
