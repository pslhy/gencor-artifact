(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sum the length of the names of a given list of names after removing the names that start with a lowercase letter. *)
let rec sample_nam (sample_names : string list) : int =
    match sample_names with
    | [] -> 0
    | h :: t -> if String.get h 0 |> Char.lowercase |> Char.code <> Char.code 'a' then String.length h + sample_nam t
    else sample_nam t

let rec sample_nam_upper (sample_names : string list) : int =
    match sample_names with
    | [] -> 0
    | h :: t -> if String.get h 0 |> Char.uppercase |> Char.code <> Char.code 'A' then String.length h + sample_nam_upper t
    else sample_nam_upper t

let sum_name_lengths (names : string list) : int =
    sample_nam names + sample_nam_upper names

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:38: Unbound value "Char.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sample_nam (sample_names : string list) : int =
    match sample_names with
    | [] -> 0
    | h :: t -> if h.[0] <> 'a' && h.[0] <> 'A' then String.length h + sample_nam t
    else sample_nam t

let sum_name_lengths (names : string list) : int =
    sample_nam names

