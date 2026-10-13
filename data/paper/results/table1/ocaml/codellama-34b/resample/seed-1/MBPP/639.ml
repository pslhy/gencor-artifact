(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sum the length of the names of a given list of names after removing the names that start with a lowercase letter. *)
let rec sample_nam (sample_names : string list) : int =
    let is_uppercase s =
        match s with
        | "" -> false
        | _ -> Char.lowercase (s.[0]) == 'a'
    in
    match sample_names with
    | [] -> 0
    | x :: xs -> if is_uppercase x then String.length x + sample_nam xs

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:16: Unbound value "Char.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sample_nam (sample_names : string list) : int =
    let is_uppercase s =
        match s with
        | "" -> false
        | _ -> Char.lowercase(s.[0]) = 'a'
    in
    match sample_names with
    | [] -> 0
    | x :: xs -> if is_uppercase x then String.length x + sample_nam xs

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:16: Unbound value "Char.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sample_nam (sample_names : string list) : int =
    let is_uppercase s =
        match s with
        | "" -> false
        | _ -> Char.compare_ci(s.[0]) = 0
    in
    match sample_names with
    | [] -> 0
    | x :: xs -> if is_uppercase x then String.length x + sample_nam xs

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:16: Unbound value "Char.compare_ci" *)
(*     Hint: Did you mean "compare"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sample_nam (sample_names : string list) : int =
    let is_uppercase s =
        match s with
        | "" -> false
        | _ -> Char.compare s.[0] 'a' = 0
    in
    match sample_names with
    | [] -> 0
    | x :: xs -> if is_uppercase x then String.length x + sample_nam xs

