(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from a string. *)
let rec remove_all_spaces (text : string) : string =
    let is_space = function ' ' -> true | _ -> false in
    match String.contains text ' ' with
    | true ->
        let substr = String.slice text 0 (String.index text ' ') in
        substr ^ (remove_all_spaces (String.slice text (String.index text ' ') (String.length text)))
    | false -> text

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:22: Unbound value "String.slice" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_all_spaces (text : string) : string =
    let is_space = function ' ' -> true | _ -> false in
    match text with
    | "" -> ""
    | ch :: rest ->
        if is_space ch then remove_all_spaces rest
        else ch :: remove_all_spaces rest

