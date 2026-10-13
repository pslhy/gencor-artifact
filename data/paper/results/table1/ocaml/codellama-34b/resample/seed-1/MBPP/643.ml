(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that checks if a strings contains 'z', except at the start and end of the word. *)
let rec text_match_wordz_middle (text : string) : bool =
    let contains_z =
        let length = String.length text in
        let rec loop pos =
            if pos >= 0 && pos < length then
                text.[pos] = 'z' || loop (pos + 1)
            else
                false
        in
        loop 0
    in
    if String.length text < 2 then
        false
    else if String.get text 0 = 'z' || String.get text (String.length text - 1) = 'z' then
        false
    else
        contains_z
    
let rec text_match_multiple_wordz_middle (text : string list) : bool =
    match text with
    | [] -> false
    | word :: rest ->
        if text_match_wordz_middle(word) then
            text_match_multiple_wordz_middle rest
        else
            false


