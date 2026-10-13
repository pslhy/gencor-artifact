(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an a followed by three 'b'. *)
let rec text_match_three (text : string) : bool =
  if text = "" then false
  else if text.[0] = 'a' && String.length text >= 3 && text.[1] = 'b'
                        && text.[2] = 'b' && text.[3] = 'b' then true
  else text_match_three (String.sub text 1 (String.length text - 1))

