(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to calculate the maximum aggregate from the list of tuples. *)
let rec max_aggregate (stdata :  (string * int) list) :  string * int =
    match stdata with
        | [] -> None 
        | (x, y):: rest -> 
            let (_, z) = max_aggregate rest
            if y >= z then (x, y) else (x, z)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:13: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_aggregate (stdata :  (string * int) list) :  string * int =
    match stdata with
    | [] -> None
    | (x, y)::rest -> 
        let (_, z) = max_aggregate rest in
        if y >= z then (x, y) else (x, z)

