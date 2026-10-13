(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert the given snake case string to camel case string. *)
let rec snake_to_camel (word : string) : string = 
    let should_capitalize char = char = '_' in
        word
        |> String.split_on_char '_' 
        |> List.map ~f:(fun (s : string) -> s |> String.lowercase |> String.capitalize)
        |> String.concat ~sep:"" 
        |> String.sub ~pos:0 ~len:1
        |> String.lowercase

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:12: Unbound value "String.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string =
    let should_capitalize char = char = '_' in
    word
    |> String.split_on_char '_'
    |> List.map ~f:String.lowercase
    |> String.concat ~sep:""
    |> String.sub ~pos:0 ~len:1
    |> String.lowercase

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:8: Unbound value "String.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string =
    let should_capitalize char = char = '_' in
    word
    |> String.split_on_char '_'
    |> List.map ~f:(fun s -> if should_capitalize s.[0] then String.capitalize_ascii s else s)
    |> String.concat ~sep:""
    |> String.sub ~pos:0 ~len:1
    |> String.lowercase

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:8: Unbound value "String.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string =
    let should_capitalize char = char = '_' in
    word
    |> String.split_on_char '_'
    |> List.map ~f:(fun s -> if should_capitalize s.[0] then String.capitalize_ascii s else s)
    |> String.concat ~sep:""
    |> String.lowercase_ascii

