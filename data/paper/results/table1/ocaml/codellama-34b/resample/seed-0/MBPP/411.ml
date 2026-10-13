(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert the given snake case string to camel case string. *)
let rec snake_to_camel (word : string) : string =
    match word with
    | "" -> ""
    | _ ->
        let (first, rest) = word.[0], word.[1..] in
        String.make 1 (Char.uppercase first) ^ (String.uncapitalize rest) in
    String.split_on_char '_' word |>
        List.map snake_to_camel |>
        String.concat ""

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
    String.split_on_char '_' word |>
        List.map snake_to_camel |>
        String.concat ""

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

let camel_to_snake (word : string) : string =
    match word with
    | "" -> ""
    | _ ->
        let (first, rest) = word.[0], word.[1..] in
        String.make 1 (Char.lowercase first) ^ (String.uncapitalize rest)

let main () =
    let name = Sys.argv.(1) in
    let input = snake_to_camel name in
    let output = camel_to_snake input in
    print_endline output
;;

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
        String.make 1 (Char.uppercase first) ^ (String.uncapitalize rest)

let camel_to_snake (word : string) : string =
    match word with
    | "" -> ""
    | _ ->
        let (first, rest) = word.[0], word.[1..] in
        String.make 1 (Char.lowercase first) ^ (String.uncapitalize rest)

let main () =
    let name = Sys.argv.(1) in
    let input = snake_to_camel name in
    let output = camel_to_snake input in
    print_endline output
;;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:48: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string =
    match word with
    | "" -> ""
    | _ ->
        let first = word.[0] in
        let rest = word.[1..] in
        String.make 1 (Char.uppercase first) ^ (String.uncapitalize rest)

let camel_to_snake (word : string) : string =
    match word with
    | "" -> ""
    | _ ->
        let first = word.[0] in
        let rest = word.[1..] in
        String.make 1 (Char.lowercase first) ^ (String.uncapitalize rest)

let main () =
    let name = Sys.argv.(1) in
    let input = snake_to_camel name in
    let output = camel_to_snake input in
    print_endline output
;;

