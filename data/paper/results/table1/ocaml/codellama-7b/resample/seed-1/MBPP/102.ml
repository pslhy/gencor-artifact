(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert a snake case string to camel case string. *)
let rec snake_to_camel (word : string) : string =
    let capitalize_first s =
        match s with
        | "" -> ""
        | _ ->
            String.sub s 0 1 |> String.capitalize |> (fun c -> c ^ String.sub s 1 ((String.length s) - 1))
    in
    match word with
    | "" -> ""
    | _ -> capitalize_first word

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:33: Unbound value "String.capitalize" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string =
    let capitalize_first s =
        match s with
        | "" -> ""
        | _ ->
            String.uppercase (String.sub s 0 1) ^ String.sub s 1 ((String.length s) - 1)
    in
    match word with
    | "" -> ""
    | _ -> capitalize_first word

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:13: Unbound value "String.uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string =
    let capitalize_first s =
        match s with
        | "" -> ""
        | _ ->
            String.uppercase (String.sub s 0 1) ^ String.sub s 1 ((String.length s) - 1)
    in
    match word with
    | "" -> ""
    | _ -> capitalize_first word

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:13: Unbound value "String.uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string =
    let capitalize_first s =
        match s with
        | "" -> ""
        | _ -> String.lowercase (String.sub s 0 1) ^ String.sub s 1 ((String.length s) - 1)
    in
    match word with
    | "" -> ""
    | _ -> capitalize_first word

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:16: Unbound value "String.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string =
    let capitalize_first s =
        match s with
        | "" -> ""
        | _ -> String.uppercase_ascii (String.sub s 0 1) ^ String.sub s 1 ((String.length s) - 1)
    in
    match word with
    | "" -> ""
    | _ -> capitalize_first word

