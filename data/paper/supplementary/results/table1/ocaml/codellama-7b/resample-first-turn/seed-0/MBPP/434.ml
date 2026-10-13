let rec text_match_one (text : string) : bool =
  match text with
  | "" -> false
  | "a" -> true
  | "b" -> text_match_one (text.[1..])
  | "ab" -> text_match_one (text.[1..]) || text_match_one (text.[2..])
  | "a" :: "b" :: rest -> text_match_one ("ab" :: rest)
  | _ -> false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an a followed by one or more b's. *)
