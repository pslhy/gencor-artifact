let rec text_match_wordz_middle (text : string) : bool =
    match text with
    | "" | "z" -> false
    | x :: xs when x = 'z' -> text_match_wordz_middle xs
    | x :: xs when xs = "" -> false
    | x :: xs -> text_match_wordz_middle xs

let rec text_match_wordz_all (text : string) : bool =
    match text with
    | "" -> true
    | x :: xs when x = 'z' -> text_match_wordz_all xs
    | x :: xs -> text_match_wordz_all xs

let text_match_wordz (text : string) : bool =
    text_match_wordz_middle text && text_match_wordz_all text


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that checks if a strings contains 'z', except at the start and end of the word. *)
