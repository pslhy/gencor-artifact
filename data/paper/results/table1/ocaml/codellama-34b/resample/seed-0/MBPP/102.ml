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
        let (first, rest) = word.[0], word.[1..] in
        String.make 1 (Char.uppercase first) ^ (String.uncapitalize rest) in
    String.split_on_char '_' word |> String.concat "" |> snake_to_camel

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:48: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string =
    match word with
    | "" -> ""
    | _ ->
        let (first, rest) = word.[0], word.[1..] in
        String.make 1 (Char.uppercase first) ^ (String.uncapitalize rest) in
    String.split_on_char '_' word |> String.concat "" |> snake_to_camel

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:48: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string =
    match word with
    | "" -> ""
    | _ ->
        let (first, rest) = word.[0], word.[1..] in
        String.make 1 (Char.uppercase first) ^ (String.uncapitalize rest)
    String.split_on_char '_' word |> String.concat "" |> snake_to_camel

(* The corrected code is as follows: *)
let rec snake_to_camel (word : string) : string =
    match word with
    | "" -> ""
    | _ ->
        let (first, rest) = word.[0], word.[1..] in
        String.make 1 (Char.uppercase first) ^ (String.uncapitalize rest) ^ rest

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:48: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string =
    match word with
    | "" -> ""
    | _ ->
        let (first, rest) = word.[0], word.[1..] in
        String.make 1 (Char.uppercase first) ^ (String.uncapitalize rest) ^ rest

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:48: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string =
    match word with
    | [] -> ""
    | '_' :: rest ->
        String.make 1 (Char.uppercase rest.[0]) ^ (String.uncapitalize rest) ^ rest
    | _ :: rest ->
        String.make 1 (Char.uppercase word.[0]) ^ (String.uncapitalize rest) ^ rest

