(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert a snake case string to camel case string. *)
let rec snake_to_camel (word : string) : string =
    match word with
    | "" -> ""
    | _ ->
        let head = String.sub word 0 1 in
        let tail = String.sub word 1 (String.length word - 1) in
        if head = "_" then
            snake_to_camel tail
        else
            head ^ camel_to_snake tail

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:20: Unbound value "camel_to_snake" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string =
    match word with
    | "" -> ""
    | _ ->
        let head = String.sub word 0 1 in
        let tail = String.sub word 1 (String.length word - 1) in
        if head = "_" then
            snake_to_camel tail
        else
            head ^ String.slice tail

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:20: Unbound value "String.slice" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string =
    match word with
    | "" -> ""
    | _ ->
        let head = String.sub word 0 1 in
        let tail = String.sub word 1 (String.length word - 1) in
        if head = "_" then
            snake_to_camel tail
        else
            head ^ tail

