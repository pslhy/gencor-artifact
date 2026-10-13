(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to convert the given string to lower case. *)
let rec is_lower (string : string) : string =
    let is_lower_case (char : char) : bool =
        match char with
        | 'a' to 'z' -> true
        | _         -> false
    in
    match string with
    | ""     -> ""
    | x :: xs -> if is_lower_case x then x :: is_lower (xs)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:15: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_lower (string : string) : string =
    match string with
    | ""     -> ""
    | x :: xs -> if x 'a' to 'z' then x :: is_lower xs else is_lower xs

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:27: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_lower (string : string) : string =
    match string with
    | ""     -> ""
    | x :: xs -> if x >= 'a' && x <= 'z' then x :: is_lower xs else is_lower xs

