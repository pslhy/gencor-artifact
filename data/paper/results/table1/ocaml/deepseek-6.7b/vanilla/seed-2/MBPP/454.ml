let rec text_match_wordz (text : string) : bool =
  let len = String.length text in
  let rec helper i =
    if i = len then false
    else if text.[i] = 'z' then true
    else helper (i + 1)
  in
  helper 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a word containing 'z'. *)
