let rec text_match_wordz_middle (text : string) : bool =
  let len = String.length text in
  if len <= 2 then false
  else if text.[0] = 'z' || text.[len - 1] = 'z' then false
  else if String.get text 1 = 'z' then true
  else text_match_wordz_middle (String.sub text 1 (len - 1))

let test1 = text_match_wordz_middle "razzles" (* false *)
let test2 = text_match_wordz_middle "bazzzlers" (* true *)
let test3 = text_match_wordz_middle "zorro" (* false *)
let test4 = text_match_wordz_middle "zzz" (* false *)
let test5 = text_match_wordz_middle "abc" (* false *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that checks if a strings contains 'z', except at the start and end of the word. *)
