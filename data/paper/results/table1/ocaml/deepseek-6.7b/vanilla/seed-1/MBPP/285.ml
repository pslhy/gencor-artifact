let rec text_match_two_three (text : string) : bool =
  match text with
  | "abb" | "abbb" -> true
  | _ when String.length text > 3 -> text_match_two_three (String.sub text 1 (String.length text - 1))
  | _ -> false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that checks whether a string contains the 'a' character followed by two or three 'b' characters. *)
