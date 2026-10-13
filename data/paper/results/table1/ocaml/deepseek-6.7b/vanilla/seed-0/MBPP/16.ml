let rec text_lowercase_underscore (text : string) : bool =
    if text = "" then true
    else
    let ch = String.get text 0 in
    let ch' = if text = "" then ' ' else String.get text 1
    in
    if (ch >= 'a' && ch <= 'z') && (ch' = '_' || ch' = ' ') then text_lowercase_underscore (String.sub text 2 (String.length text - 2))
    else if (ch >= 'a' && ch <= 'z') then text_lowercase_underscore (String.sub text 1 (String.length text - 1))
    else false

let _ = assert (text_lowercase_underscore "abc_def" = true)
let _ = assert (text_lowercase_underscore "abc_def_ghi" = true)
let _ = assert (text_lowercase_underscore "abc_123" = false)
let _ = assert (text_lowercase_underscore "Abc_def" = false)
let _ = assert (text_lowercase_underscore "abc__def" = false)
let _ = assert (text_lowercase_underscore "abc_def_" = false)
let _ = assert (text_lowercase_underscore "_abc_def" = false)
let _ = assert (text_lowercase_underscore "abc_def_ghi_" = false)
let _ = assert (text_lowercase_underscore "" = true)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to that returns true if the input string contains sequences of lowercase letters joined with an underscore and false otherwise. *)
