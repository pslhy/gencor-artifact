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
    let rec aux (acc : string list) (string : string) : string list =
        match string with
        | "" -> acc
        | _ -> aux (string :: acc) (String.sub string 1 (String.length string - 1)) in
    aux [] string

