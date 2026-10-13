let rec text_match_one (text : string) : bool =
  match text with
  | "a" -> false
  | "" -> false
  | _::tail -> text_aux tail true
and text_aux (text : string) (prev_b : bool) : bool =
  match text with
  | 'b'::tail -> text_aux tail true
  | 'a'::tail -> if prev_b then true else text_aux tail false
  | _::tail -> text_aux tail prev_b
  | [] -> prev_b  


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an a followed by one or more b's. *)
