(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that matches a word containing 'z'. *)
let rec text_match_wordz (text : string) : bool =
    match text with
    | [] -> false
    | _ :: xs ->
        if String.contains "z" (List.hd text) then true
        else text_match_wordz xs

