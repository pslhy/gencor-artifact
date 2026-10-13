(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert a string to a list of strings split on the space character. *)
let rec string_to_list (string : string) : string list =
    let space = " " in
    let rec loop (string : string) (acc : string list) : string list =
        match String.index_opt string space with
        | None -> (acc @ [string])
        | Some i -> loop (String.sub string 0 i) (acc @ [String.sub string (i + 1) (String.length string - i - 1)])
    in
    loop string []

