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
    | name :: rest ->
        let cleaned_name =
            if name.[0] = lowercase_first_letter
            then String.sub name 1 (String.length name - 1)
            else name
        in
        String.length cleaned_name + sample_nam rest

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:27: Unbound value "lowercase_first_letter" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sample_nam (sample_names : string list) : int =
    match sample_names with
    | [] -> 0
    | name :: rest ->
        let cleaned_name =
            if name.[0] = lowercase_first_letter
            then String.sub name 1 (String.length name - 1)
            else name
        in
        String.length cleaned_name + sample_nam rest

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:27: Unbound value "lowercase_first_letter" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sample_nam (sample_names : string list) : int =
    match sample_names with
    | [] -> 0
    | name :: rest ->
        let cleaned_name =
            if name.[0] = Char.lowercase_ascii name.[0]
            then String.sub name 1 (String.length name - 1)
            else name
        in
        String.length cleaned_name + sample_nam rest

