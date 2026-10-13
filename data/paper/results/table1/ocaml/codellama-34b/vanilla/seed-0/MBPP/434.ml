let rec text_match_one (text : string) : bool =
  if text = "" then true
  else if text.[0] = 'a' then text_match_all (text.[1..])
  else false

and text_match_all (text : string) : bool =
  if text = "" then false
  else if text.[0] = 'b' then text_match_all (text.[1..])
  else false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an a followed by one or more b's. *)
