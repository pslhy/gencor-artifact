(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that checks if a strings contains 'z', except at the start and end of the word. *)
let rec text_match_wordz_middle (text : string) : bool =
  if text = "" then true
  else if text.[0] = 'z' || text.[String.length text - 1] = 'z'
  then text_match_wordz_middle (String.sub text 1 (String.length text - 2))
  else false

