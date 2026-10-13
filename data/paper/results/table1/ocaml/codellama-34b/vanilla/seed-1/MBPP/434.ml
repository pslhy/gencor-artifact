let rec text_match_one (text : string) : bool =
match text with
| a::b::bs -> if a = 'a' || b = 'b' then text_match_one bs else false
| _ -> true

let is_valid (text : string) : bool =
if text = [] then true
else text_match_one text


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an a followed by one or more b's. *)
