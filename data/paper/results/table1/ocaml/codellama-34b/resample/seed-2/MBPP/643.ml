(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that checks if a strings contains 'z', except at the start and end of the word. *)
let rec text_match_wordz_middle (text : string) : bool =
    match text with
    | [] | [_] -> false
    | h :: t ->
        if h = 'z' then true
        else if t = [] then false
        else text_match_wordz_middle t

