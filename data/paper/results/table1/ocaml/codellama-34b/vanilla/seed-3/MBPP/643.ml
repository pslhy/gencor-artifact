let rec text_match_wordz_middle (text : string) : bool =
  if String.length text <= 2 then
    false
  else if text.[0] = 'z' && text.[(String.length text) - 1] = 'z' then
    false
  else if String.contains text 'z' then
    true
  else
    false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that checks if a strings contains 'z', except at the start and end of the word. *)
