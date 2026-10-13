
let rec text_match_one (text : string) : bool =
  if text = "" then true
  else if text.[0] = 'a' then text_match_one (text.[1..(String.length text) - 1])
  else 'b'::text_match_one (text.[1..(String.length text) - 1])

let text_match (text : string) : bool = text_match_one text

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an a followed by one or more b's. *)
