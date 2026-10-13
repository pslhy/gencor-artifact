let rec replace_specialchar (text : string) : string =
  match text with
  | "" -> ""
  | x :: xs -> 
        if x = ' ' || x = '.' || x = ',' then ':' ^ (replace_specialchar xs)
        else x ^ (replace_specialchar xs)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace all occurrences of spaces, commas, or dots with a colon. *)
