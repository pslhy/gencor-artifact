(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert a snake case string to camel case string. *)
let rec snake_to_camel (word : string) : string =
    if word = "" then ""
    else
    String.sub word 0 1 ^
        String.lowercase (
            String.sub word 1 ((String.length word) - 1)
            |> String.replace "_" ""
        )

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:9: Unbound value "String.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string =
    if word = "" then ""
    else
    String.sub word 0 1 ^
        String.lowercase_ascii (
            String.sub word 1 ((String.length word) - 1)
            |> String.replace "_" ""
        )

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:16: Unbound value "String.replace" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string =
    if String.length word = 0 then ""
    else
    String.sub word 0 1 ^
        String.lowercase_ascii (
            String.sub word 1 (String.length word - 1)
            |> String.replace "_" ""
        )

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:16: Unbound value "String.replace" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string =
    if String.length word = 0 then ""
    else
    String.sub word 0 1 ^
        String.lowercase_ascii (
            String.sub word 1 (String.length word - 1)
            |> String.map (function '_' -> ' ' | c -> c)
        )
    |> String.split_on_char ' '
    |> String.concat ""

