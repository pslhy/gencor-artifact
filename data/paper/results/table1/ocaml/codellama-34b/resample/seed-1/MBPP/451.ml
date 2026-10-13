(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from the given string. *)
let rec remove_whitespaces (text1 : string) : string =
    let isWhitespace (c : char) = c = ' ' || c = '\t' || c = '\r' || c = '\n' in
    let rec loop (index : int) =
        if index = String.length (text1) then
            ""
        else if isWhitespace (text1.[index]) then
            loop (index + 1)
        else
            text1.[index] :: loop (index + 1)
    in
    loop 0

