let rec text_match_wordz_middle (text : string) : bool = 
  let is_alpha c = Char.code c >= Char.code 'a' && Char.code c <= Char.code 'z' in
  let rec search_text across_substring =
    match across_substring with
    | "" -> true
    | c::cs when not (is_alpha c) -> search_text cs
    | 'z'::cs -> search_text cs
    | _::cs -> search_text cs
  in
  search_text (String.sub text 1 (String.length text - 2))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that checks if a strings contains 'z', except at the start and end of the word. *)
