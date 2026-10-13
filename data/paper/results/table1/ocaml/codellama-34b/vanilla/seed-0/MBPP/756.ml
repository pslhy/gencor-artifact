let rec text_match_zero_one (text : string) : bool =
    if text = "" then true
    else if text.[0] = 'a' then text_match_zero_one (String.sub text 1 (String.length text - 1))
    else false
  
let text_match_one_more (text : string) : bool =
    if text = "" then false
    else if text.[0] = 'a' then text_match_one_more (String.sub text 1 (String.length text - 1))
    else if text.[0] = 'b' then text_match_zero_one (String.sub text 1 (String.length text - 1))
    else false
  
let text_match_unrule (text : string) : bool =
    if text = "" then true
    else if text_match_zero_one text then true
    else if text_match_one_more text then true
    else false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by one or more 'b's. https://www.w3resource.com/mlthon-exercises/re/mlthon-re-exercise-3.php *)
