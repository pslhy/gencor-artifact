(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return list of all prefixes from shortest to longest of the input string *)
(*     >>> all_prefixes "abc" *)
(*     ["a"; "ab"; "abc"] *)
let rec all_prefixes (string : string) : string list =
    if string = "" then []
    else
        let chars = String.to_list string in
        let first_char = String.make 1 chars.(!





(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec all_prefixes (string : string) : string list =
    if string = "" then []
    else string :: all_prefixes (String.sub string 1 (String.length string - 1))

let test = all_prefixes "abc"

