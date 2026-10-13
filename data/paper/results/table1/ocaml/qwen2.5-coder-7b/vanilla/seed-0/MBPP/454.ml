let rec text_match_wordz (text : string) : bool = 
  let rec helper (s : string) : bool = 
    if s = "" then false
    else if s.[0] = 'z' then true
    else helper (String.sub s 1 (String.length s - 1))
  in
  helper text


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a word containing 'z'. *)
