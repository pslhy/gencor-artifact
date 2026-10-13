
let rec remove_lowercase (str1 : string) : string =
    let is_lowercase s =
        match s with
        | "" -> false
        | _ -> Char.lowercase_ascii s == s
    in
    if str1 == "" then ""
    else if is_lowercase str1 then remove_lowercase (String.sub str1 1 (String.length str1 - 1))
    else str1.[0] :: remove_lowercase (String.sub str1 1 (String.length str1 - 1))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove lowercase substrings from a given string. *)
