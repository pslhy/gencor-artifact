(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove lowercase substrings from a given string. *)
let rec remove_lowercase (str1 : string) : string =
    match str1.[0] with
    | Some c ->
        if Char.is_lowercase c then remove_lowercase (Str.slice 1 (Str.length str1 - 1) str1)
        else String.concat (remove_lowercase (Str.slice 1 (Str.length str1 - 1) str1))
    | None -> ""

