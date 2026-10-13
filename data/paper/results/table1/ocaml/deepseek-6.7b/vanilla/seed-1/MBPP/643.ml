let rec text_match_wordz_middle (text : string) : bool =
  match text with
  | "z" -> true
  | "" -> false
  | _ -> if String.get text 0 = 'z' || String.get text (String.length text - 1) = 'z' then
             text_match_wordz_middle (String.sub text 1 (String.length text - 2))
           else if String.get text 0 = 'Z' || String.get text (String.length text - 1) = 'Z' then
             text_match_wordz_middle (String.sub text 1 (String.length text - 2))
           else
             not (String.contains text 'Z') && not (String.contains text 'z') &&
             text_match_wordz_middle (String.sub text 1 (String.length text - 2))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that checks if a strings contains 'z', except at the start and end of the word. *)
